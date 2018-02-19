class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.new
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
