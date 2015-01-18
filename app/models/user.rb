class User < ActiveRecord::Base
  has_many :relationships, :foreign_key => "user_id", :dependent => :destroy
  has_many :occurances_as_a_relation, :class_name => "Relationship", :foreign_key => "relation_id", :dependent => :destroy
  has_many :roles
  delegate :president, :administrator, :doctor, :medic, :psychic, :fighter, :defender, :member, :minor, to: :roles
  has_many :appearances
  has_many :media, :through => :appearances
  delegate :tv_series, :movie, :game, :song, :commercial, :print, :book, :music_video, :appearance, to: :media
  mount_uploader :avatar, AvatarUploader

  def self.height
    self.height = self.feet + "\' " + self.inches + "\""
  end

end
