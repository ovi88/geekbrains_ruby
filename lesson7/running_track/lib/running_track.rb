require 'active_support/all'
require_relative 'running_track/data'
require_relative 'running_track/table'
require_relative 'running_track/track'

module RunningTrack

  # TABLE_EXPIRE_IN = 5.seconds

  # @cache = {}

  def self.print
    Table.new(Data.import).print
    # clear_cache unless fresh_table?
    # @cache[:table] ||= get_table
    # @cache[:table].print
  end

  def self.find query
    collection = TrackCollection.new
    collection.each do |track|
      if query = 'wifi'
        if track.wifi? == true
          puts track.to_s
        end
      end
    end
  end

  def self.random count=1
    collection = TrackCollection.new
    for i in 1..count
      puts collection.tracks.sample
    end
  end

  def self.save!
  end

  def self.load!
  end    

  # def self.get_cache
  #   @cache
  # end
  #
  # def self.clear_cache
  #   @cache = {}
  # end


  # private

  # def self.get_table
  #   @cache[:expire_at] = Time.now + TABLE_EXPIRE_IN
  #   Table.new Data.import
  # end
  #
  # def self.fresh_table?
  #   @cache[:expire_at] && Time.now <= @cache[:expire_at]
  # end

end

# p RunningTrack.get_cache.keys
#RunningTrack.print
 #RunningTrack.print
RunningTrack.find('wifi')
#RunningTrack.random(count=3)
# p RunningTrack.get_cache.keys
# sleep 5
# RunningTrack.print
