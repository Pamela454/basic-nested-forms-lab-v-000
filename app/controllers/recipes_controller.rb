class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipe
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
