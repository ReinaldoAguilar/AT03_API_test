module ModuleUtil
    def aleatory_time
      year = Time.now.year - rand(5) - 1
      month = rand(12) + 1
      day = rand(31) + 1
      "#{month}/#{day}/#{year}"
    end

    def aleatory_city
      city = ['Cba', 'La Paz','STA Cruz','Oru','Suc','Pot','Ben','Pan','Tar']
      city[rand(9)]
    end
end
