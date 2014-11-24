class AddOutsideRelationsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :outside_relations, :text
  end
end
