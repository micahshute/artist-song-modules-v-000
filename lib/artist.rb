require 'pry'

class Artist

  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  @@artists
  
  def self.all
    @@artists
  end

  attr_accessor :name
  attr_reader :songs

  def initialize
    super
    @songs = []
    binding.pry
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
