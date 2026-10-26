require "test_helper"

class IpInfoTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::IpInfo::VERSION
  end

  def test_city_database_can_be_queried
    assert_equal "CN", ::IpInfo::CityReader.city("180.175.136.84").country.iso_code
  end
end
