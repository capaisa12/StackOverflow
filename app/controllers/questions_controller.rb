class QuestionsController < ApplicationController

def index
  @questions = Question.all
end

def new
  @questions = Question.new
end

def create
  @questions = Question.new(questions_params)
  if @questions.save
    redirect_to questions_path, notice: "La pregunta fue publicada de forma exitosa"
  else
    render :new
  end
end

def show
  @questions = Question.find(params[:id])
end

def edit
  @questions = Question.find(params[:id])
end

def update
  @questions = Question.find(params[:id])
  if @questions.update(questions_params)
    redirect_to question_path, notice: "la pregunta se modifico de forma exitosa"
  else
    render :edit
  end
end

private

def questions_params
  params.require(:question).permit(:title, :description, :fecha, :email, :NoAnswer, :NoVotos)
end

end
