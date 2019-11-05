class PokemonsController < ApplicationController

  def capture()
    pokemon = Pokemon.find(params[:id])
    user = current_trainer
    pokemon.trainer = user
    user.pokemons << pokemon
    pokemon.save
    user.save
    redirect_to :root
  end

  def damage()
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    if pokemon.health <= 0
      pokemon.destroy
    else
      pokemon.save
    end
    trainer_id = current_trainer.id
    redirect_to "/trainers/#{trainer_id}"
  end

  def new()
    @pokemon = Pokemon.new
  end

  def add()
    p_params = params[:pokemon]
    p_params.permit(:name, :ndex)
    pokemon = Pokemon.new
    pokemon.name = p_params[:name]
    if pokemon.valid?
      pokemon.ndex = p_params[:ndex]
      pokemon.level = 1
      pokemon.health = 100
      trainer = current_trainer
      pokemon.trainer = trainer
      trainer.pokemons << pokemon
      pokemon.save
      trainer.save
      redirect_to "/trainers/#{trainer.id}"
    else
      redirect_to "/new"
    end
  end

end
