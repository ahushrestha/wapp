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

class Quiz < ApplicationRecord
    belongs_to :owner,
      class_name: 'User',
      foreign_key: 'user_id',
      inverse_of: :quizzes
    has_many :questions,
      class_name: 'MultipleChoiceQuestion',
      foreign_key: 'quiz_id',
      inverse_of: :quiz,
      dependent: :destroy
end
