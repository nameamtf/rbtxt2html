# RbTxt2HTML

[![Gem Version](https://badge.fury.io/rb/rbtxt2html.svg)](https://badge.fury.io/rb/rbtxt2html)
[![Build status](https://travis-ci.org/EdDeAlmeidaJr/rbtxt2html.svg?branch=master)](https://travis-ci.org/EdDeAlmeidaJr/rbtxt2html.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/EdDeAlmeidaJr/rbtxt2html/badge.svg?branch=master)](https://coveralls.io/github/EdDeAlmeidaJr/rbtxt2html?branch=master)
[![Code Climate](https://codeclimate.com/repos/56b8c0f316cb7c26bd002a50/badges/060c1b3c346cc72b493c/gpa.svg)](https://codeclimate.com/repos/56b8c0f316cb7c26bd002a50/feed)
[![Issue Count](https://codeclimate.com/repos/56b8c0f316cb7c26bd002a50/badges/060c1b3c346cc72b493c/issue_count.svg)](https://codeclimate.com/repos/56b8c0f316cb7c26bd002a50/feed)

This gem receives the location of a txt file, reads it and turns it into HTML code.

Lines are converted to paragraphs by default, but certain marks in a line cause it to be turned into other markups:

* %T1%       => will make the line to be converted to html h1 tag
* %T2%       => will make the line to be converted to html h2 tag
* %T3%       => will make the line to be converted to html h3 tag
* %T4%       => will make the line to be converted to html h4 tag
* %T5%       => will make the line to be converted to html h5 tag
* %T6%       => will make the line to be converted to html h6 tag

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rbtxt2html'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rbtxt2html

## Usage

Include the gem in your project with

```ruby
require 'rbtxt2html'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

If you want to contribute to this project, your help is welcome, for sure. But please, take some note before you start, so you won't tell me you didn't knew these things beforehand:

01) We are here to develop some software, not to discuss politics, race, religion, gender or any other issue the 'politically correct' people like to raise to disguise their inability to make things happen.

02) Opinions given by any developer outside the scope of this project are not our business. We don't care about what what you think, as long as you do NOT bring your opinions to this development space.

03) You may not raise issues about things not related to this project. This includes issues related to other developer's opinions given outside here.

04) Just to summarize all things said before: **Keep your personal stuff far away from this project and discuss only it in this context here**.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

