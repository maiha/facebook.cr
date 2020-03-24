SHELL=/bin/bash

all: facebook

######################################################################
### compiling

# for mounting permissions in docker-compose
export UID = $(shell id -u)
export GID = $(shell id -g)

COMPILE_FLAGS=-Dstatic
BUILD_TARGET=

ON_ALPINE=docker-compose run --rm alpine

.PHONY: build
build:
	@$(ON_ALPINE) shards build $(COMPILE_FLAGS) --link-flags "-static" $(BUILD_TARGET) $(O)

.PHONY: facebook
facebook: BUILD_TARGET=--release facebook
facebook: build

.PHONY: facebook-dev
facebook-dev: BUILD_TARGET=facebook-dev
facebook-dev: build

.PHONY: facebook-pb
facebook-pb: BUILD_TARGET=--release facebook-pb -D with_pb
facebook-pb: build

.PHONY : fbget
fbget: BUILD_TARGET=fbget
fbget: build

######################################################################
### testing

.PHONY: ci
ci: check_version_mismatch spec facebook fbget

.PHONY : spec
spec:
	@$(ON_ALPINE) crystal spec $(COMPILE_FLAGS) -v --fail-fast

.PHONY : check_version_mismatch
check_version_mismatch: shard.yml README.md
	diff -w -c <(grep version: README.md) <(grep ^version: shard.yml)

######################################################################
### generating

.facebook-ruby-business-sdk:
	git clone --depth 2 git@github.com:facebook/facebook-ruby-business-sdk.git .facebook-ruby-business-sdk

.PHONY: gen
gen: gen-proto

.PHONY: gen-proto
gen-proto: .facebook-ruby-business-sdk
	@crystal gen/proto-facebook.cr

.PHONY: proto
proto: proto_each proto_remove_duplicated

# [proto_at_once] fails
# facebook/Targeting.proto:6:19: "Targeting.adgroup_id" is already defined in file "Targeting.proto".
# facebook/Targeting.proto:59:12: "Targeting" seems to be defined in "Targeting.proto", which is not imported by "facebook/Targeting.proto".  To use it here, please add the necessary import.
# Makefile:44: recipe for target 'proto_at_once' failed
# make: *** [proto_at_once] Error 1
.PHONY: proto_at_once
proto_at_once:
	@mkdir -p src/cli/proto
	protoc -I proto --crystal_out src/cli/proto proto/*.proto
	@mkdir -p src/cli/proto/facebook
	PROTOBUF_NS=Facebook::Proto protoc -I proto -I proto/facebook --crystal_out src/cli/proto/facebook proto/facebook/*.proto

# [proto_each]
# - alternative for proto_at_once
# - slow. but works.
.PHONY: proto_each
proto_each:
	@mkdir -p src/cli/proto/facebook
	@for x in proto/facebook/*.proto; do \
	  PROTOBUF_NS=Facebook::Proto protoc -I proto -I proto/facebook --crystal_out src/cli/proto/facebook $$x; \
	done

# I don't know how to not create imported file. So adjust by removing it.
.PHONY: proto_remove_duplicated
proto_remove_duplicated:
	@for x in src/cli/proto/facebook/*.pb.cr; do \
	  if [ -f "src/cli/proto/`basename $$x`" ]; then \
	    echo "delete: duplicated $$x"; \
	    rm $$x; \
	  fi; \
	done

.PHONY: proto_test
proto_test:
	@mkdir -p src/cli/proto/facebook
	PROTOBUF_NS=Facebook::Proto protoc -I proto -I proto/facebook --crystal_out src/cli/proto/facebook proto/facebook/Targeting.proto

######################################################################
### versioning

VERSION=
CURRENT_VERSION=$(shell git tag -l | sort -V | tail -1 | sed -e 's/^v//')
GUESSED_VERSION=$(shell git tag -l | sort -V | tail -1 | awk 'BEGIN { FS="." } { $$3++; } { printf "%d.%d.%d", $$1, $$2, $$3 }')

.PHONY : version
version:
	@if [ "$(VERSION)" = "" ]; then \
	  echo "ERROR: specify VERSION as bellow. (current: $(CURRENT_VERSION))";\
	  echo "  make version VERSION=$(GUESSED_VERSION)";\
	else \
	  sed -i -e 's/^version: .*/version: $(VERSION)/' shard.yml ;\
	  sed -i -e 's/^    version: [0-9]\+\.[0-9]\+\.[0-9]\+/    version: $(VERSION)/' README.md ;\
	  echo git commit -a -m "'$(COMMIT_MESSAGE)'" ;\
	  git commit -a -m 'version: $(VERSION)' ;\
	  git tag "v$(VERSION)" ;\
	fi

.PHONY : bump
bump:
	make version VERSION=$(GUESSED_VERSION) -s

