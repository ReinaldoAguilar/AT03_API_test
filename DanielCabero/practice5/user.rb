class Travel

  def self.generateUser(sizeList)
        puts format('|%-15s|%-15s|%-15s|%-15s|', 'USER', 'PASSWORD', 'TRAVEL_DATE', 'DESTINATION')

        sizeList.times do |number|
          puts format('|%-15s|%-15s|%-15s|%-15s|', randomUser(number),
                      randomPassword,
                      randomDate,
                      randomDestination)
         end
      end

    def self.randomUser(number)
        "user_#{number}"
      end

    def self.randomPassword
        ticket = []
        8.times {ticket.push(rand(65..126).chr)}
        ticket.join('')
      end

    def self.randomDate
        "#{Time.at(rand * 100000000).month}/#{Time.at(rand * 100000000).day}/#{Time.now.year}"
      end

    def self.randomDestination
       destination = %w[SUCRE SANTA_CRUZ TARIJA COCHABAMBA BENI PANDO POTOSI LA_PAZ ORURO]
        destination[rand(9)]
      end
  end

Travel.generateUser(100)