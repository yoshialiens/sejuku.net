class AddSexToContacts < ActiveRecord::Migration
  def change
  	change_column :contacts, :sex, :integer
  end
end
