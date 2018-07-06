require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  def artist=(artist)
    @artist = artist
  end

end
