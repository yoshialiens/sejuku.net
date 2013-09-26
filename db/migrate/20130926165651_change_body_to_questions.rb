class ChangeBodyToQuestions < ActiveRecord::Migration
  def up
    change_column :questions, :body, :text, :limit => nil
  end
end
