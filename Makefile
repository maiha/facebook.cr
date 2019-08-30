SHELL=/bin/bash

BUILD := crystal build src/cli/bin/facebook.cr

VERSION=
CURRENT_VERSION=$(shell git tag -l | sort -V | tail -1)
GUESSED_VERSION=$(shell git tag -l | sort -V | tail -1 | awk 'BEGIN { FS="." } { $$3++; } { printf "%d.%d.%d", $$1, $$2, $$3 }')

.SHELLFLAGS = -o pipefail -c

all: facebook-dev

.PHONY: facebook-dev
facebook-dev:
	$(BUILD) -o $@

.PHONY: facebook
facebook:
	$(BUILD) -o $@ -D with_pb --release

.PHONY: facebook-pb
facebook-pb:
	$(BUILD) -o $@ -D with_pb

.PHONY : fbget
fbget:
	shards build fbget

.facebook-ruby-business-sdk:
	git clone --depth 2 git@github.com:facebook/facebook-ruby-business-sdk.git .facebook-ruby-business-sdk

.PHONY: gen
gen: gen-proto

.PHONY: gen-proto
gen-proto: .facebook-ruby-business-sdk
	@crystal gen/proto-facebook.cr

.PHONY: proto
proto:
	@mkdir -p src/cli/proto
	protoc -I proto --crystal_out src/cli/proto proto/*.proto
	@mkdir -p src/cli/proto/facebook
	PROTOBUF_NS=Facebook::Proto protoc -I proto -I proto/facebook --crystal_out src/cli/proto/facebook proto/facebook/*.proto

.PHONY: proto_each
	@mkdir -p src/cli/proto/facebook
	@for x in proto/facebook/*.proto; do \
	  PROTOBUF_NS=Facebook::Proto protoc -I proto -I proto/facebook --crystal_out src/cli/proto/facebook $$x; \
	done

.PHONY : test
test: check_version_mismatch spec progs

.PHONY : spec
spec:
	crystal spec -v --fail-fast

.PHONY : check_version_mismatch
check_version_mismatch: shard.yml README.md
	diff -w -c <(grep version: README.md) <(grep ^version: shard.yml)

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
