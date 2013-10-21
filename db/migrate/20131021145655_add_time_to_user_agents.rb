class AddTimeToUserAgents < ActiveRecord::Migration
  def change
    add_column :user_agents, :first_time, :time
    add_column :user_agents, :last_time, :time
  end
end
