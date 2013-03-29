class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.text :answer
      t.string :correctanswer
      t.integer :difficulty

      t.timestamps
    end
  end
end
