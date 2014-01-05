# Sprockets Images

[![Gem Version](https://badge.fury.io/rb/sprockets-images.png)](https://rubygems.org/gems/sprockets-images)
[![Build Status](https://travis-ci.org/jnbt/sprockets-images.png?branch=master)](https://travis-ci.org/jnbt/sprockets-images)
[![Code Climate](https://codeclimate.com/github/jnbt/sprockets-images.png)](https://codeclimate.com/github/jnbt/sprockets-images)

Extends the [Sprockets](https://github.com/sstephenson/sprockets) asset pipeline with (lossless) compression of images. The compression is done with the [image_optim](https://github.com/toy/image_optim) gem.

## DEPRECATED

This gem works for [image_optim](https://github.com/toy/image_optim) version below 0.10.0 but won't be updated any more as image_optim supports a sprockets integration by itself since [9f581a7e8799ffbfffbf01ff43b4916f512a9d9d](https://github.com/toy/image_optim/commit/9f581a7e8799ffbfffbf01ff43b4916f512a9d9d).

## Installation

Add this line to your application's Gemfile:

    gem 'sprockets-images'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sprockets-images

## Test

    $ rake

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
