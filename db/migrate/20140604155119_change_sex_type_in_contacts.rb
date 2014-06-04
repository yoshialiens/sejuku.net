class ChangeSexTypeInContacts < ActiveRecord::Migration
  def change
    change_column :contacts, :sex, :string
  end
end
