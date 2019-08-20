# EquinoxCrm

Increase efficiency with EquinoxCRM - An innovative CRM for Financial Advisors.

A comprehensive cloud based solution for Registered Investment Advisors and Broker Dealers. Integrate and manage client data and accounts with ease. Integrate seamlessly with your other productivity applications.

By using this gem you can fetch the contacts of the EquinoxCRM application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'equinox_crm'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install equinox_crm

## Usage

TODO: Write usage instructions here

To fetch a specific contact

@client = EquinoxCrm::Client.new('YOUR_API_KEY')
@client.contacts('ID')

To fetch list of contacts

@client = EquinoxCrm::Client.new('YOUR_API_KEY')
@client.contacts_list

Default limit is 10 records. To fect more or less 10 records user limit param

@client.contacts_list(limit: 20)

If the result contains next_page attribute is null means list is over.

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/reliadvisor/equinox_crm. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EquinoxCrm project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/reliadvisor/equinox_crm/blob/master/CODE_OF_CONDUCT.md).