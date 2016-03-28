require 'open-uri'
require 'json'
require 'timeout'

module RunningTrack
  module Data

    DATA_URL = "http://api.data.mos.ru/v1/datasets/899/rows"

    def self.import
      p "[Table]: import data"
      status = Timeout::timeout(5) {
      #sleep 10
      result = open(DATA_URL).read
      }

    rescue Timeout::Error
      puts "Превышен интервал ожидания сервера"

    end

  end
end

#RunningTrack::Data.import
