class AddIndexNomailTokenToUsers < ActiveRecord::Migration
  def change
		add_index :users, :nomail_token, :unique => true
  end
end
