class RemoveQuestionFromQuizzes < ActiveRecord::Migration
  def up
    remove_column :quizzes, :question
  end

  def down
    add_column :quizzes, :question, :text
  end
end
