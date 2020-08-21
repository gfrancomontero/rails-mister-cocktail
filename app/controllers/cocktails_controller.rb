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
    @cocktail = Cocktail.new(cocktail_params)
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



  def cocktail_params
  params.require(:cocktail).permit(:name, :body, :photo)
  end


end
