class AddQuizRefToMultipleChoiceQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :multiple_choice_questions, :quiz, foreign_key: true
  end
end
