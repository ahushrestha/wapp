class QuizzesController < ApplicationController
    
    def home
      begin
        @quiz = Quiz.find(params[:id])
      rescue
        redirect_to home_url, alert: 'Error: Quiz not found'
      end
        @question = @quiz.questions.find(@quiz.question_ids.sample)
        # render 'quizzes/home.html.erb' 
    end
end
