# ZzoundsDeals

Welcome to ZzoundsDeals! This gem scrapes deal information from Zzounds' website and displays it for you! You can simply type the number next to the item you want more information on, and a menu with more options for what you want to read about the item will display. From there, you can easily follow the instructions and get what you're looking for! Thanks for checking this out!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zzounds_deals'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install zzounds_deals

## Usage

Upon opening, you should see a list of 10 - 12 'deals' from which you can select. When you see one you would like to know more about, type *only* its number, and hit enter. You should now see the information for the item previously displayed as well as a new user menu.

From here, you can select the Overview (type 1, then enter) for a brief (professionally written) description of the item, Specs (2, then enter) for more technical information of what is included with the item as well as its more literal descriptors, Reviews (3, enter) to see some top reviews of the item, or you may return to the full list of items (4, enter) or exit the application altogether (5, enter). 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/zzounds_deals. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/zzounds_deals/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ZzoundsDeals project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/zzounds_deals/blob/master/CODE_OF_CONDUCT.md).
