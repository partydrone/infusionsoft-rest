# Keap::REST

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/keap/rest`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'keap-rest'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install keap-rest

## Configuration

Use the configuration object to configure the client:

```ruby
Keap::REST.configure do |config|
  config.client_id = "my_client_id"
  config.client_secret = "my_client_secret"
  config.redirect_uri = "http://localhost:3000"
end
```

## Usage

```ruby
# Provide authentication credentials
client = Keap::REST::Client.new(access_token: "my_access_token")

# Get current account profile
client.account_profile

# Get a list of contacts
contacts = client.contacts

# …or a single contact
contact = client.contact(42)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/keap-rest. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/keap-rest/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Keap::Rest project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/keap-rest/blob/main/CODE_OF_CONDUCT.md).
