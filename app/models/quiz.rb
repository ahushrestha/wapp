# == Schema Information
#
# Table name: quizzes
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Quiz < ApplicationRecord
    has_many :questions,
      class_name: 'MultipleChoiceQuestion',
      foreign_key: 'quiz_id',
      inverse_of: :quiz,
      dependent: :destroy
end
