require 'workflow'
require_relative 'data'


module RunningTrack

  class TrackCollection

    attr_reader :tracks

    include Enumerable


    def each &block
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

      include Workflow

      attr_reader :address, :name, :district, :wifi, :record

      def to_s
        "Дорожка: #{@name}, округ: #{@district}, адрес: #{@address}"
        #@record.to_s
      end

      def wifi?
        @wifi == 'да'
      end

      workflow do
        state(:unknown) do
          event :max, transitions_to: :good
          event :avg, transitions_to: :normal
          event :min, transitions_to: :bad
        end

        state :good do
        end

        state :normal do
        end

        state :bad do
        end
      end

      private

      def initialize record
        @record = record['Cells']
        @name = record['Cells']['SportZoneName']
        @address = record['Cells']['Address']
        @district = record['Cells']['District']
        @wifi = record['Cells']['ObjectHasWifi']
      end

  end
end

# collection = RunningTrack::TrackCollection.new
# collection.each do |track|
#   p track.current_state.name
#   track.min!
#   p track.current_state.name
# end

#
#track = RunningTrack::Track.new
#p track.current_state.name
