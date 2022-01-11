class QuestionsController < ApplicationController
  def ask

  end

  def answer
    if params[:question].downcase == "i am going to work right now!"
      @response = "Great"
    elsif params[:question].end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
