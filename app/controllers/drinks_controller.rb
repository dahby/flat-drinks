class DrinksController < ApplicationController

  def index
    @drinks = Drink.all
  end

  def show

  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to @drink
    else
      redirect_to new_drink_path
    end
  end

  private

    def drink_params
      params.require(:drink).permit(:name, :maker_id)
    end
  
end
