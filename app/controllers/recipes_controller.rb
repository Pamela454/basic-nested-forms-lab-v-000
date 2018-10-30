class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  def receipe_params
    params.require(:recipe).permit(
      :title,
      ingredients: [
        :id
        :name,
        :quantity
        ]
      )
    end
end
