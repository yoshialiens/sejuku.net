class AddNomailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nomail, :boolean
  end
end
