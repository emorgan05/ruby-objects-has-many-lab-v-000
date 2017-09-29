class Artist
  attr_accessor :name

  @@song_count

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    number_of_songs = []
    self.each do |artist|
      number_of_songs << artist.songs.length
    end
    @@song_count = number_of_songs.inject(0) { |sum, x| sum + x }
  end

end
