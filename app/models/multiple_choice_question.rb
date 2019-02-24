# == Schema Information
#
# Table name: multiple_choice_questions
#
#  id           :integer          not null, primary key
#  answer       :string
#  distractor_1 :string
#  distractor_2 :string
#  distractor_3 :string
#  distractor_4 :string
#  question     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  quiz_id      :integer
#
# Indexes
#
#  index_multiple_choice_questions_on_quiz_id  (quiz_id)
#

class MultipleChoiceQuestion < ApplicationRecord
    belongs_to :quiz,
      class_name: 'Quiz',
      foreign_key: 'quiz_id',
      inverse_of: :questions
    validates :question, presence: true
    validates :answer, presence: true
    validates :distractor_1, presence: true
end
