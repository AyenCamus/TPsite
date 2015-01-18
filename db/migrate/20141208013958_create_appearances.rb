class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.belongs_to :user
      t.belongs_to :medium
      t.datetime :first_appearance
      t.timestamps
    end
  end
end
