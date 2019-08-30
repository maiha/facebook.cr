# facebook.cr [![Build Status](https://travis-ci.org/maiha/facebook.cr.svg?branch=master)](https://travis-ci.org/maiha/facebook.cr)

facebook api for [Crystal](http://crystal-lang.org/).

- crystal: 0.30.0

## Usage (library)

```crystal
require "facebook"

client = Facebook::Client.new(auth: "xxxxxx")
res = client.get("/me")
puts res.body
```

## Usage (facebook application)

### setup config (first time only)

Generate sample by `config`, then set `access_token`. That's all.

```console
$ facebook config sample > .facebookrc
$ vi .facebookrc
access_token    = "xxxxxx"
```

You can verify the access_key by invoking `api me`.

```console
$ facebook api me
```

### api

##### builtin api commands

Just run `facebook api` to show all available api commands.

```console
$ facebook api
[possible tasks]
  adaccounts, get, me
...

$ facebook api adaccounts
```

`get` is meta api commands that can invoke arbitrary commands by string.

```console
$ facebook api get '/v4.0/act_123456/campaigns'
```

## Development

1. Add the dependency to your `shard.yml`:

```yaml
dependencies:
  facebook:
    github: maiha/facebook
    version: 0.2.0
```

2. Run `shards install`

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/maiha/facebook.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [maiha](https://github.com/maiha) - creator and maintainer
