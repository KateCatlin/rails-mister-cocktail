class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = Ingredient.all.order(:name)
  end

  def create
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.description = params[:dose][:description]
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    @cocktail = @dose.cocktail
    redirect_to cocktail_path(@cocktail)
  end
end
