class Address
  include Geokit::Geocoders

  def self.geocode(address)
    Geokit::Geocoders::GoogleGeocoder.geocode(address).ll.split(',').map{|s| s.to_f}
    # MultiGeocoder.geocode(address).ll.split(',').map{|s| s.to_f}
  end
end
