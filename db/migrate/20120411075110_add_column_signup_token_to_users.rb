class AddColumnSignupTokenToUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.string :signup_token
      t.index :signup_token
    end
  end
end
