class AddNomaiTokenlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nomail_token, :string
  end
end
