class CoachingController < ApplicationController
  def ask
  end

  def answer
    @ask_user = params[:ask_user]
    @reponse = coach_answer(@ask_user)
  end


  def coach_answer(your_message)
    if your_message == nil
        ''
    elsif your_message.downcase == "i am going to work right now!"
     ''
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

end
