class RenameNicknameFromUsers < ActiveRecord::Migration
  def change
    rename_column :nickname, :alias
  end
end
