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

require 'test_helper'

class MultipleChoiceQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "multiple choice question should be valid" do
    one = multiple_choice_questions(:one)
    assert one.valid?
  end

  test "question must be present" do
    one = multiple_choice_questions(:one)
    one.question = nil
    assert_not one.valid?
  end

  test "multiple choice question must have parent quiz" do
    one = multiple_choice_questions(:one)
    one.quiz_id = nil
    assert_not one.valid?
  end
end
