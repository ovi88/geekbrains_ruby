class Ship

  def jump
    #raise "Not implemented yet."
    @coordinates = yield.compute
    puts "Jumping to <<#{@coordinates}>>!"
  end

end
