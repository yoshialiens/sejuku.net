class ChangeBodyToAnswers < ActiveRecord::Migration
  def up
    change_column :answers, :body, :text, :limit => nil
  end
end
