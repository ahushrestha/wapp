class MultipleChoiceQuestionsController < ApplicationController
    def ask
        @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
        # TODO: Error handling
        # render 'multiple_choice_questions/ask.html.erb'
    end
end
