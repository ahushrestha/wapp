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
end
