class DropColumnUserIdFromUserFiles < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :user_files, :user_id
  end

  def self.down
    add_column :user_files, :user_id, :integer
  end
end
