class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer
      t.integer :question_id
      t.boolean :correct_answer

      t.timestamps
    end
  end
end
