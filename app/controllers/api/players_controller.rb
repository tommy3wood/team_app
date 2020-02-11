class Api::PlayersController < ApplicationController

  def index
    @players = Player.all

    if @players
      render 'index.json.jb'
    else
      render json: {message: "YOU CAN'T BE HERE"}
    end
  end

  def create
    @player = Player.new(
                          name: params[:name],
                          number: params[:number],
                          team_id: params[:team_id]
                          )
    @player.save
    render 'show.json.jb'
  end

  def update
    @player = Player.find(params[:id])

    @player.name = params[:name] || @player.name
    @player.number = params[:number] || @player.number
    @player.team_id = params[:team_id] || @player.team_id

    @player.save
    render 'show.json.jb'
  end

  def show
    @player = Player.find(params[:id])

    render 'show.json.jb'
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    render json: {message: "#{player.name} HAS BEEN RELEASED"}
  end

end
