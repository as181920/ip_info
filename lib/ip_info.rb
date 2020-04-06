require "maxmind/geoip2"
require "ip_info/version"

module IpInfo
  class Error < StandardError; end

  CityReader = MaxMind::GeoIP2::Reader.new File.expand_path("../../data/GeoLite2-City.mmdb", __FILE__)
end
