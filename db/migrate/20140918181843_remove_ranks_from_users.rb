class RemoveRanksFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :ranks
  end
end
