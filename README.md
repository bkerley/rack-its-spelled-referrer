# Rack::Its::Spelled::Referrer

Copies the `referer` header to `referrer`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-its-spelled-referrer'
```

And then execute:

    $ bundle

## Usage

In the `config.ru` of your Rack application:

```ruby
require 'rack/its/spelled/referrer'
use Rack::Its::Spelled::Referrer
```

## Contributing

1. Fork it ( https://github.com/bkerley/rack-its-spelled-referrer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
