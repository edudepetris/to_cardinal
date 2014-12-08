# ToCardinal

[![Build Status](https://travis-ci.org/edudepetris/to_cardinal.svg?branch=master)](https://travis-ci.org/edudepetris/to_cardinal)
[![Coverage Status](https://img.shields.io/coveralls/edudepetris/to_cardinal.svg)](https://coveralls.io/r/edudepetris/to_cardinal)
[![Gem Version](https://badge.fury.io/rb/to_cardinal.svg)](http://badge.fury.io/rb/to_cardinal)


Ruby gem which will allow to convert from ordinal numbers to cardinal numbers.



## Installation

Add this line to your application's Gemfile:

    gem 'to_cardinal'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install to_cardinal

## Usage

```ruby
require 'to_cardinal'

# some ordinal numbers to cardinals
'first'.to_cardinal   # => 1
'1st'.to_cardinal     # => 1
'fourth'.to_cardinal  # => 4
'4th'.to_cardinal     # => 4

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/to_cardinal/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
