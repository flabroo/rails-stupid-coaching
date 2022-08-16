class QuestionsController < ApplicationController

  def ask

  end

  def answer
    if params[:question]
      @question = params[:question]
      @answer = coach_answer_enhanced(params[:question])
    end
  end

  def coach_answer(your_message)
    return 'Great!' if your_message == 'I am going to work right now!'

    if your_message.include?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == your_message.upcase
      message_upcase(your_message)
    else
      coach_answer(your_message)
    end
  end

  def message_upcase(your_message)
    if your_message == 'I AM GOING TO WORK RIGHT NOW!'
      'Great!'
    elsif your_message.include?('?')
      'I can feel your motivation! Silly question, get dressed and go to work!'
    else
      "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end
end
