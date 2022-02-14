class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    @answer = 'dummy.'
    if @question.downcase.include? 'i am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
