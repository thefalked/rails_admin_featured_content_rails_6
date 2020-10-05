# Rails Admin Featured Content Rails 6

[![Gem Version](https://badge.fury.io/rb/rails_admin_featured_content_rails_6.svg)](https://badge.fury.io/rb/rails_admin_featured_content_rails_6)

An easy way for creating Featured Content using [rails_admin](https://github.com/sferik/rails_admin). This gem is an update of [rails_admin_featured_content](https://github.com/luizpicolo/rails_admin_featured_content), it has bugfixes, improvements and now works on Rails 6.

## Important

First, make sure that the gem [rails_admin_content_builder](https://github.com/thefalked/rails_admin_content_builder_rails_6) is installed and working properly.

## Installation

This is a complement to the gem rails_admin_content_builder, only works with dependencies listed in the requirements and not alone.

Add this line to your application's Gemfile:

```ruby
gem 'rails_admin_featured_content_rails_6'
```
After the above step, execute:

    $ bundle

Run the generator and migrations:
    
    rails g rails_admin_featured_content
    rake db:migrate

After running the generator, set the module like this in `config -> initializers -> carrierwave.rb`. This is used to low the quality of the image, leaving it light and you can use for all uploaders.

```ruby
module CarrierWave
  module MiniMagick
    def quality(percentage)
      manipulate! do |img|
        img.quality(percentage.to_s)
        img = yield(img) if block_given?
        img
      end
    end
  end
end
```
after this steps you need to use your carousel and set the container to the class `.fc-slide`

## Usage

Include this in your controller:

```ruby
@featured = RailsAdminFeaturedContent::FeaturedContent.where(status: true).first
```

In your show featured content view:

```
<%= @featured.featured_sanitized %>
```
## Requirements

Dependencies:

    MiniMagick
    Rails_admin
    Rails_admin_content_builder

Supported ORM:

    ActiveRecord

Supported Asset Plugin:

    CarrierWave

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thefalked/rails_admin_featured_content_rails_6. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/thefalked/rails_admin_featured_content_rails_6/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsAdminFeaturedContentRails6 project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/thefalked/rails_admin_featured_content_rails_6/blob/master/CODE_OF_CONDUCT.md).
