module ConvertionModule
    def ConvertionModule.milliToCentimeters millimeter, file
      file.write("into milliToCentimeters method Modulo class :\n")
      (millimeter/10).round(2)
    end

    def ConvertionModule.centiToMeters centimeters, file
      file.write("into centiToMeters method Modulo class :\n")
      (centimeters/100).round(2)
    end

    def ConvertionModule.metersToKilometers meters,file
      file.write("into metersToKilometers method Modulo class :\n")
      (meters/1000).round(2)
    end
end