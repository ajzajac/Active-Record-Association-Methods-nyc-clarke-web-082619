class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    song = Song.find(1)
    song.genre
  end

  def song_count
    Song.count
  end

  def genre_count
    Genre.count
end
end
