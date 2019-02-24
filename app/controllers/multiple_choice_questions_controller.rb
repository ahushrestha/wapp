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
            redirect_to quiz_home_url(@multiple_choice_question.quiz), notice: "Right! #{@multiple_choice_question.answer} was the correct answer."
        elsif params[:guess] && ['1', '2', '3', '4'].include?(params[:guess])
            redirect_to quiz_home_url(@multiple_choice_question.quiz), alert: "Wrong! #{@multiple_choice_question.answer} was the correct answer."
        else
            redirect_to quiz_home_url(@multiple_choice_question.quiz), alert: "Error: Invalid answer."
        end
    end

    # def show
    #     @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
    #     # render 'multiple_choice_questions/show.html.erb'
    # end

    def new
        begin
            @quiz = Quiz.find(params[:quiz_id])
          rescue
            redirect_to quizzes_url, alert: 'Error: Quiz not found'
          end
        @multiple_choice_question = MultipleChoiceQuestion.new
        #render 'multiple_choice_questions/new.html.erb'
    end

    def create
      begin
        @quiz = Quiz.find(params[:quiz_id])
      rescue
        redirect_to quizzes_url, alert: 'Error: Quiz not found'
        end
      @multiple_choice_question = MultipleChoiceQuestion.new(params.require(:multiple_choice_question).permit(:question, :answer, :distractor_1, :distractor_2, :distractor_3, :distractor_4))
      @quiz.questions << @multiple_choice_question 
      if @quiz.save
        redirect_to quiz_url(@quiz), notice: 'Multiple choice question successfully created.'
      else
        flash.now[:alert] = 'Error! Unable to create multiple choice question.'
        render :new
      end
    end

    def edit
        @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
        # render 'multiple_choice_questions/edit.html.erb'
    end

    def update
        begin
            @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
          rescue
            redirect_to quizzes_url, alert: 'Error: Multiple choice question not found'
          end

        @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
        if @multiple_choice_question.update(params.require(:multiple_choice_question).permit(:question, :answer, :distractor_1, :distractor_2, :distractor_3, :distractor_4))
          redirect_to quiz_url(@multiple_choice_question.quiz), notice: 'Multiple choice question successfully updated.'
        else
          flash.now[:alert] = 'Error! Unable to update multiple choice question.'
          render :edit
        end
    end

    def destroy
        begin
          @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
        rescue
          redirect_to quizzes_url, alert: 'Error: Multiple choice question not found'
        end
        @quiz = @multiple_choice_question.quiz
        @multiple_choice_question.destroy
        redirect_to quiz_url(@quiz), notice: 'Multiple choice question was successfully destroyed.'
    end

end
