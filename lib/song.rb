class Song
	extend Memorable::ClassMethods #=> class module 
	include Memorable::InstanceMethods #=> instance module 
 	extend Findable #=> class module
 	include Paramable #=> instance module
	
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end