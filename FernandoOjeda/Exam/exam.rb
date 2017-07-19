
module Convertions
  def millimeters_to_centimeters
    return @centimeters = millimeters / 10
  end

  def centimeters_to_meters
    return @meters = @centimeters / 100
  end

  def meters_to_kilometers
    return @kilometers = @meters / 1000
  end
end


