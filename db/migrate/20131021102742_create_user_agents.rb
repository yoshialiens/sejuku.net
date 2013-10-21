class CreateUserAgents < ActiveRecord::Migration
  def change
    create_table :user_agents do |t|
      t.string :viewed_sections, :null => false
      t.string :uid, :null => false

      t.timestamps
    end
    add_index :user_agents, :uid, :unique => true
  end
end
