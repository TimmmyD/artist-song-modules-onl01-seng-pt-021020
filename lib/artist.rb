class Artist
	extend Memorable::ClassMethods #=> class module 
	include Memorable::InstanceMethods #=> instance module 
 	extend Findable #=> class module
 	include Paramable #=> instance module
 
  attr_accessor :name
  attr_reader :songs

  @@artists = []

	def initialize
		super
    @songs = []
  end

  def self.all
		@@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end