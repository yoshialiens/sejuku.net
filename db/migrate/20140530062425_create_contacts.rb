class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    
      t.string :name, :null => false
      t.string :tel, :null => false
      t.string :fbid, :null => false
      t.string :email, :null => false
      t.text   :reason, :null => false
      t.text   :date_and_time, :null => false
      # wanna check box or radio button
      
      t.timestamps
    end
  end
end
