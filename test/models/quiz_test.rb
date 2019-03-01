# == Schema Information
#
# Table name: quizzes
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_quizzes_on_user_id  (user_id)
#

require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "quiz should be valid" do
    one = quizzes(:one)
    assert one.valid?
  end

  test "quiz with no question should be valid" do
    two = quizzes(:two)
    assert two.valid?
  end
end
