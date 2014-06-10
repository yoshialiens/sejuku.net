class ChangeFbidColumnOfNullToContacs < ActiveRecord::Migration
	def change
		change_column :contacts, :fbid, :string, null: true
	end
end
