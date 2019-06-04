class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def artist_name(artist_name)
    self.artist = Artist.find_or_create_by_name(artists_name)
    artist.add_song(self)
  end
end
