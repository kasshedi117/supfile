class AddColumnsMessageUserIdToShareLinks < ActiveRecord::Migration[5.0]
  def change
    add_column  :share_links, :message, :text
    add_column  :share_links, :user_id, :integer
  end
end
