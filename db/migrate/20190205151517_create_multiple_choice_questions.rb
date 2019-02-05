class CreateMultipleChoiceQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :multiple_choice_questions do |t|
      t.string :question
      t.string :answer
      t.string :distractor_1
      t.string :distractor_2
      t.string :distractor_3
      t.string :distractor_4

      t.timestamps
    end
  end
end
