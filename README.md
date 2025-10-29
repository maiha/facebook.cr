# facebook.cr [![CI](https://github.com/maiha/facebook.cr/actions/workflows/ci.yml/badge.svg)](https://github.com/maiha/facebook.cr/actions/workflows/ci.yml)

facebook api for [Crystal](http://crystal-lang.org/).

## Usage (as Application)

Download the x86_64 static binary from [releases](https://github.com/maiha/facebook.cr/releases).

You can send an arbitrary GET request to the Facebook Marketing API.

```console
$ facebook api get '/v23.0/me' -a <ACCESS_TOKEN>
$ facebook api get '/v23.0/me/adaccounts -d fields=account_id,name' -a <ACCESS_TOKEN>
```

Access tokens and other information can be put together in a configuration file.

```console
$ facebook config sample > .facebookrc

$ vi .facebookrc
access_token    = "xxxxxx"

$ facebook api me
```

## Usage (as Library)

- crystal: 0.33.0

```crystal
require "facebook"

client = Facebook::Client.new(auth: "xxxxxx")
res = client.get("/me")
puts res.body
```

## Development

1. Add the dependency to your `shard.yml`:

```yaml
dependencies:
  facebook:
    github: maiha/facebook
    version: 23.0.0
```

2. Run `shards install`

## Contributing

1. Fork it (<https://github.com/maiha/facebook.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [maiha](https://github.com/maiha) - creator and maintainer
