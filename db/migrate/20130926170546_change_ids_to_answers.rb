class ChangeIdsToAnswers < ActiveRecord::Migration
  def change
    change_column :answers, :question_id, :int
    change_column :answers, :user_id, :int
  end
end
