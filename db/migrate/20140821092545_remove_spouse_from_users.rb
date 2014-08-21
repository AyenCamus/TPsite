class RemoveSpouseFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :significant_others
    rename_column :spouse, :significant_others
  end
end
