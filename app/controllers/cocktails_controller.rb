class CocktailsController < ApplicationController
    before_action :find_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    # raise
    @cocktail = Cocktail.new(params[:cocktail].permit(:name))
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
    @ingredient = Ingredient.all
    # raise
  end
end
