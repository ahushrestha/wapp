class MultipleChoiceQuestionsController < ApplicationController
    def ask
        @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
        # TODO: Error handling
        # render 'multiple_choice_questions/ask.html.erb'
    end

    def check_answer
        @multiple_choice_question = MultipleChoiceQuestion.find (params[:id])
        # TODO: Error handling

        if params[:guess] && params[:guess] == '0'
            redirect_to home_url, notice: "Right! #{@multiple_choice_question.answer} was the correct answer."
        elsif params[:guess] && ['1', '2', '3', '4'].include?(params[:guess])
            redirect_to home_url, alert: "Wrong! #{@multiple_choice_question.answer} was the correct answer."
        else
            # TODO: Error handling
        end
    end
end
