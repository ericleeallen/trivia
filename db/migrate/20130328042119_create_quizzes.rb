class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :question
      t.integer :difficulty
      t.date :date

      t.timestamps
    end
  end
end
