class RpsController < ApplicationController  #inherits from ApplicationController class.

  def play

    @users_choice = params[:throw]

    outcome = ["rock","paper","scissors"]

    @computer_choice = outcome[rand(3).floor]

    # if @users_choice == @computer_choice
    #   @result = "User Wins!"
    # else
    #   @result = "Computer Wins!"
    # end

    #My answer
    if @users_choice == "rock" && @computer_choice == "scissors"
      @result = "You Win!!"
    elsif @users_choice == "rock" && @computer_choice == "paper"
      @result = "Computer Wins"
    elsif @users_choice == "paper" && @computer_choice == "rock"
      @result = "You Win!!"
    elsif @users_choice == "paper" && @computer_choice == "scissors"
      @result = "Computer Wins"
    elsif @users_choice == "scissors" && @computer_choice == "paper"
      @result = "You Win!!"
    elsif @users_choice == "scissors" && @computer_choice == "rock"
      @result = "Computer Wins"
    else
      @result = "It's a draw"
    end

  end

# Jordans Example:
  #
  # @users_weapon = params[:throw]
  #
  # outcome = ["rock","paper","scissors"]
  #
  # @comp_weapon = outcome[rand(3).floor]
  #
  # win_combos =[
  #     ['rock', 'scissors'],
  #     ['paper', 'rock'],
  #     ['scissors', 'paper']
  #   ]
  #   @result = ''
  #   win_combos.each do | el |
  #     if @comp_weapon == el[0] && @users_weapon == el[1]
  #       @result = 'Comp Wins'
  #     elsif @comp_weapon == @users_weapon
  #       @result = 'Draw'
  #     else
  #       @result = 'User Wins'
  #     end
  #   end

#Lawrences Answer

#   class RpsController < ApplicationController
#
# def player_choice
#    end
#     def play_game
#         rules = {
#             "rock" => {"rock" => "draw", "paper" => "loss", "scissors" => "win"},
#             "scissors" => {"rock" => "loss", "paper" => "win", "scissors" => "draw"},
#             "paper" => {"rock" => "win", "paper" => "draw", "scissors" => "loss"}
#         }
#         cpu_choices = ["rock","paper","scissors"]
#         @cpu_choice = cpu_choices.sample
#         @user_choice = params[:throw]
#         @result = rules[@user_choice][@cpu_choice]
#     end
# end

end
