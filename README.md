# RBTxt2HTML

This gem receives the location of a txt file, reads it and turns it into HTML code.

Lines are converted to paragraphs by default, but certain marks in a line cause it to be turned into other markups:

* #T1#       => will make the line to be converted to <h1></h1>
* #T2#       => will make the line to be converted to <h2></h2>
* #ST1#      => will make the line to be converted to <h3></h3>
* #ST2#      => will make the line to be converted to <h4></h4>

Besides, certains marks will change the condition of the text as a whole:

* #LEFT#     => will make the text to be left aligned
* #RIGHT#    => will make the text to be right aligned
* #JUSTIFY#  => will make the text to be justified


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

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rbtxt2html. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

