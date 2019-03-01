class QuizzesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home]
    
    def home
      begin
        @quiz = Quiz.find(params[:id])
      rescue
        redirect_to home_url, alert: 'Error: Quiz not found'
      end
        @question = @quiz.questions.find(@quiz.question_ids.sample)
        # render 'quizzes/home.html.erb' 
    end

    def index
      @quizzes = current_user.quizzes 
      # render 'quizzes/index.html.erb'
    end

    def show
      begin
        @quiz = Quiz.find(params[:id])
      rescue
        redirect_to quizzes_url, alert: 'Error: Quiz not found'
      end
      # render ' quizzes/show.html.erb'
    end

    def new
      @quiz = Quiz.new
      # render 'quizzes/new.html.erb'
    end

    def edit
      begin
        @quiz = Quiz.find(params[:id])
      rescue
        redirect_to quizzes_url, alert: 'Error: Quiz not found'
      end
      # render 'edit.html.erb'
    end

    def create
      @quiz = Quiz.new(params.require(:quiz).permit(:title, :description))
      current_user.quizzes << @quiz

      if current_user.save
        redirect_to quiz_url(@quiz), notice: 'Quiz successfully created.'
      else
        flash.now[:alert] = 'Error! Unable to create quiz.'
        render :new
      end
    end

    def update
       begin
         @quiz = Quiz.find(params[:id])
       rescue
         redirect_to quizzes_url, alert: 'Error: Quiz not found'
       end
       @quiz = Quiz.find(params[:id])
       if @quiz.update(params.require(:quiz).permit(:title, :description))
         redirect_to quiz_url(@quiz), notice: 'Quiz successfully updated.'
       else
         flash.now[:alert] = 'Error! Unable to update quiz.'
         render :edit
       end
    end

    def destroy
      begin
        @quiz = Quiz.find(params[:id])
      rescue
        redirect_to quizzes_url, alert: 'Error: Quiz not found'
      end
      @quiz.destroy
      redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.'
    
    end
    
end
