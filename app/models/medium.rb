class Medium < ActiveRecord::Base
  belongs_to :user
  scope :tv_series, -> {where(type: "TVSeries")}
  scope :movie, -> {where(type: "Movie")}
  scope :game, -> {where(type: "Game")}
  scope :song, -> {where(type: "Song")}
  scope :commercial, -> {where(type: "Commercial")}
  scope :print, -> {where(type: "Print")}
  scope :book, -> {where(type: "Book")}
  scope :music_video, -> {where(type: "MusicVideo")}
  scope :appearance, -> {where(type: "Appearance")}

  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end

end
