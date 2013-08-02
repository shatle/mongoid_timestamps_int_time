# MongoidTimestampsIntTime

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid_timestamps_int_time'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_timestamps_int_time

## Usage

U should other gem: `mongoid`

```
class User
  include Mongoid::Document
  include Mongoid::IntTimestamps

  field :name, type: String
end

# test
User.create(name: "happy").created_at.class.is_a? Fixnum
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
