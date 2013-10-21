class ChangeNomailTokeAddNotNull < ActiveRecord::Migration
  def up
		change_column :users, :nomail_token, :string, :null => false
  end

  def down
		change_column :users, :nomail_token, :string
  end
end
