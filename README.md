# IpInfo

lookup city names and so on

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ip_info', git: "git@gitlab.dd-life.com:shared/ip_info.git", branch: "master"
```

## GeoIP database

The database is stored with Git LFS. `.lfsconfig` uses the GitLab SSH remote so LFS can authenticate with the existing SSH key and obtain temporary authorization for its data transfer; a separate HTTPS password is not required. The key must have read access to `shared/ip_info`.

Bundler Git caches may have an empty index. Before requiring the gem in CI, prepare the actual resolved dependency directory:

```sh
ip_info_path="$(bundle show ip_info)"
git -C "$ip_info_path" read-tree HEAD
git -C "$ip_info_path" lfs pull --include=data/GeoLite2-City.mmdb
bundle exec ruby -rip_info -e 'puts "GeoIP database ready"'
```

## Usage

```ruby
IpInfo::CityReader.city("180.175.136.84").most_specific_subdivision.names["zh-CN"]
# => "上海"
```

## Development

Development uses Ruby 4.0.9. The public gem keeps its existing minimum Ruby requirement.

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ip_info.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
