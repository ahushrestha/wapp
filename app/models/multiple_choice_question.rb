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

class MultipleChoiceQuestion < ApplicationRecord
end
