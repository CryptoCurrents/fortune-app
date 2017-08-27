class PagesController < ApplicationController
  def fortune_action
    fortune_messages = [
                        "you will become rich and powerful beyond your wildest dreams.", 
                        "you will die before the end of the week...Sorry.",
                        "I can't tell... perhaps another $20 would help."
                        ]
    @reading = fortune_messages.sample
    # @reading = fortune_messages.shuffle.first
    # @reading = fortune_messages[rand(0...fortune_messages.count)]
    render 'fortune_page.html.erb'
  end

  def lotto_action
    winning_numbers_array = []
    6.times do
      winning_numbers_array << rand(1..60)
    end
    @winning_numbers = winning_numbers_array.join(", ")
    render 'lotto_page.html.erb'
  end

  def count_action
    @count += 1
    render 'count_page.html.erb'
  end
end




