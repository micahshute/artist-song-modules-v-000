require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods, Paramable, Findable

  attr_accessor :name
  attr_reader :artist

  def artist=(artist)
    @artist = artist
  end

end
