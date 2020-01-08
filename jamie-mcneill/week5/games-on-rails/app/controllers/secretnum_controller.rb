class SecretnumController < ApplicationController  #inherits from ApplicationController class.

  #create method
  def form
  end

  def answer

    #links to views.erb template file with the same name.
    @secret_number = rand(1..10)

    @guess = params[:guess].to_i

    if @secret_number == @guess
      @result = "You guessed correctly"
    else
      @result = "Guess again"
    end

    #ternary operator
    @result = @secret_number == @guess ? "You guessed correctly" : "Guess again"

  end

end
