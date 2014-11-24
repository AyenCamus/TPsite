class User < ActiveRecord::Base
  has_many :relationships, :foreign_key => "user_id", :dependent => :destroy
  has_many :occurances_as_a_relation, :class_name => "Relationship", :foreign_key => "relationship_id", :dependent => :destroy
  has_many :roles
  delegate :president, :administrator, :doctor, :medic, :psychic, :fighter, :defender, :member, :minor, to: :roles
  mount_uploader :avatar, AvatarUploader
end
