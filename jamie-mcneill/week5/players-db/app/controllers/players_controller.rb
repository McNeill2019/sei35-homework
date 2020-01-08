
class PlayersController < ApplicationController

  skip_before_action :verify_authenticity_token, raise: false
  #Bypass the automatic forms security checking done by Rails
  #...just for today.

  # #CREATE

  #1. New blank form

  def new
  end


  #2. Form submit, create, redirect

  def create
    Player.create(
      name: params[:name],
      world_ranking: params[:world_ranking],
      age: params[:age],
      country: params[:country],
      prize_money: params[:prize_money],
      titles: params[:titles],
      image: params[:image]
    )

    redirect_to( players_path ) # /planets

  end

  #READ

  # 1. Index of planets
  def index
    @players = Player.all
  end

  # 2. Details page for one player
  def show
    # Because of the '/players/:id' route, we get access to the ID used in the URL in the params variable; so if the URL was /planets/25, the variable params[:id] will contain the string '25'
   @player = Player.find(params[:id])
  end


  #UPDATE

  #1. Pre-filled edit form

  def edit

  @player = Player.find (params[:id])

  end

  #2. Form submit, update DB, redirect

  def update

  player = Player.find (params[:id])
    player.update(
      name: params[:name],
      world_ranking: params[:world_ranking],
      age: params[:age],
      country: params[:country],
      prize_money: params[:prize_money],
      titles: params[:titles],
      image: params[:image]
    )

    redirect_to player_path(player.id)
    #redirect to the show page: /planets/:id
  end

  #Destroy

  def destroy

    Player.destroy params[:id]

    #redirect to the index
    redirect_to( players_path )
  end

end
