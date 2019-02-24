class PagesController < ApplicationController
  def home
    @quizzes = Quiz.all
    # @multiple_choice_question = MultipleChoiceQuestion.find(question_id)
    # question_id = MultipleChoiceQuestion.all.pluck(:id).sample
    # Ahuti: MultipleChoiceQuestion.all -> array of all records
    # Ahuti: pluck(:id) -> we want just id, not all records
    # Ahuti: sample -> randomly choose one

    #@multiple_choice_question = MultipleChoiceQuestion.find(question_id)
    # render 'home.html.erb'
  end

  def about
    # render 'about.html.erb'
  end

  def shrstha2
    # render 'shrstha2.html.erb'
  end
end
