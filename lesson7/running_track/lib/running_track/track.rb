require_relative 'data'

module RunningTrack

  class TrackCollection

    attr_reader :tracks

    include Enumerable

    def each &block
  #     # Делегирование
      # @persons.each{ |person| yield person }
  #     # block # => Proc.new
      @tracks.each &block

    rescue NoMethodError
      #puts "Сервер вернул пустой ответ"
    end


    def initialize
      # p DATA.read
      @tracks = parse! Data.import
    end

    def parse! data
      JSON.parse(data).map! do |record|
        Track.new record
      end
    rescue JSON::ParserError
      puts "Сервер вернул пустой ответ"
    end

  end

  class Track

      attr_reader :address, :name, :district, :wifi
      
      def to_s
        #{}"Дорожка: #{@name}, округ: #{@district}, адрес: #{@address}"
        @record.to_s
      end

      private

      def initialize record
        @record = record
        @name = record['Cells']['SportZoneName']
        @address = record['Cells']['Address']
        @district = record['Cells']['District']
        @wifi = record['Cells']['ObjectHasWifi']
      end
  end
end

#collection = RunningTrack::TrackCollection.new
#collection.each { |user| p user.wifi }
