class Role < ActiveRecord::Base
  belongs_to :user
  scope :president, -> {where(type: "President")}
  scope :administrator, -> {where(type: "Administrator")}
  scope :doctor, -> {where(type: "Doctor")}
  scope :medic, -> {where(type: "Medic")}
  scope :psychic, -> {where(type: "Psychic")}
  scope :fighter, -> {where(type: "Fighter")}
  scope :defender, -> {where(type: "Defender")}
  scope :member, -> {where(type: "Member")}
  scope :minor, -> {where(type: "Minor")}

  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end

end
