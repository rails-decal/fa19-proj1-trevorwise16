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
end
