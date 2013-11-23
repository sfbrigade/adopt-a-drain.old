class Address
  include Geokit::Geocoders

  def self.geocode(address)
    Geokit::Geocoders::GoogleGeocoder3.geocode(address).ll.split(',').map{|s| s.to_f}
    # MultiGeocoder.geocode(address).ll.split(',').map{|s| s.to_f}
  end
end
