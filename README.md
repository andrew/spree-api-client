# Spree::API::Client

[![Build Status](https://secure.travis-ci.org/andrew/spree-api-client.png)](https://travis-ci.org/andrew/spree-api-client)

** Beware: very alpha and untested **

A rubygem for interacting with the Spree API: http://api.spreecommerce.com/v1/

Heavily inspired by the excellent Octokit: https://github.com/pengwynn/octokit

## Installation

Add this line to your application's Gemfile:

    gem 'spree-api-client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spree-api-client

## Usage

    client = Spree::API::Client.new('http://example/api', 'yourapitokenstring')
    products = client.products

## TODO

* More tests
* Mock web requests in tests
* documentation
* rdoc generation
* release to rubygems.org
* gemnasium
* code climate
* Error handling
* Autopagination?

## Development

Source hosted at [GitHub](http://github.com/andrew/spree-api-client).
Report Issues/Feature requests on [GitHub Issues](http://github.com/andrew/spree-api-client/issues).

Tests can be ran with `rake spec`

### Note on Patches/Pull Requests

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Commit, do not mess with rakefile, version, or history.
   (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
 * Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2012 Andrew Nesbitt. See [LICENSE](https://github.com/andrew/spree-api-client/blob/master/LICENSE) for details.
