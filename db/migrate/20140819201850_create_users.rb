class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :alias
      t.string :ranks
      t.string :gender
      t.string :height
      t.string :weight
      t.string :hair_color
      t.string :eye_color
      t.string :weight
      t.string :orientation
      t.string :date_of_birth
      t.string :race
      t.string :nationality
      t.string :hometown
      t.string :occupation
      t.string :income
      t.string :religion
      t.string :special_attributes
      t.string :skills
      t.string :birth_order
      t.string :relationship_skills
      t.string :corrective_lenses
      t.string :vices
      t.string :health
      t.string :disabilities
      t.string :education
      t.string :intelligence
      t.string :mental_illnesses
      t.text :distinguishing_features
      t.text :preferred_dress
      t.text :mannerisms
      t.text :hobbies
      t.text :speech_patterns
      t.text :strengths
      t.text :description
      t.timestamps
    end
  end
end
