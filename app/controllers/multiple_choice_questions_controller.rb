class MultipleChoiceQuestionsController < ApplicationController
    def ask
        begin
            @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
        rescue
            redirect_to home_url, alert: "Error: Question not found."
        end
        # render 'multiple_choice_questions/ask.html.erb'
    end

    def check_answer
        begin
            @multiple_choice_question = MultipleChoiceQuestion.find (params[:id])
        rescue
            redirect_to home_url, alert: "Error: Question not found."
        end

        if params[:guess] && params[:guess] == '0'
            redirect_to home_url, notice: "Right! #{@multiple_choice_question.answer} was the correct answer."
        elsif params[:guess] && ['1', '2', '3', '4'].include?(params[:guess])
            redirect_to home_url, alert: "Wrong! #{@multiple_choice_question.answer} was the correct answer."
        else
            redirect_to home_url, alert: "Error: Invalid answer."
        end
    end

    def index
        @multiple_choice_questions = MultipleChoiceQuestion.all 
        # render 'multiple_choice_questions/index.html.erb'
    end

    def show
        @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
        # render 'multiple_choice_questions/show.html.erb'
    end
end
