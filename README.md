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

* Implement all methods in Spree API: http://api.spreecommerce.com/v1/
  * Line Items
  * Payments
  * Shipments
  * Return Authorizations
  * Taxons

* More tests
* Mock web requests in tests
* Error handling
* Autopagination

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
