# facebook.cr

facebook api for [Crystal](http://crystal-lang.org/).

- crystal: 0.30.0

## Usage

```crystal
require "facebook"

client = Facebook::Client.new(auth: "xxxxxx")
client.api = "/me"

res = client.execute
puts res.body
```

## Development

1. Add the dependency to your `shard.yml`:

```yaml
dependencies:
  facebook:
    github: maiha/facebook
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
