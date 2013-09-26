class ChangeIdsToQuestions < ActiveRecord::Migration
  def change
    change_column :questions, :user_id, :int
  end
end
