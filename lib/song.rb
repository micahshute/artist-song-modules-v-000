require 'pry'

class Song

  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  @@all = []
  
  attr_accessor :name
  attr_reader :artist

  def artist=(artist)
    @artist = artist
  end

end
