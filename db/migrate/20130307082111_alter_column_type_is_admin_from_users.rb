class AlterColumnTypeIsAdminFromUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_column :users, :is_admin, :boolean
  end

  def self.down
    change_column :users, :is_admin, :string
  end
end
