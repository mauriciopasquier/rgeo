# -----------------------------------------------------------------------------
#
# Tests for the GEOS factory
#
# -----------------------------------------------------------------------------

require "test_helper"

class GeosFactoryTest < Test::Unit::TestCase # :nodoc:
  include RGeo::Tests::Common::FactoryTests

  def setup
    @factory = RGeo::Geos.factory(srid: 1000)
    @srid = 1000
  end

  def test_is_geos_factory
    assert_equal(true, RGeo::Geos.is_geos?(@factory))
    assert_equal(true, RGeo::Geos.is_capi_geos?(@factory))
    assert_equal(false, RGeo::Geos.is_ffi_geos?(@factory))
  end
end if RGeo::Geos.capi_supported?
