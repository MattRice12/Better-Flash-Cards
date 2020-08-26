class CategoriesController < ApplicationController
  def index
    categories = Category.includes(:flash_cards).all
    render json: {
      categories: categories
    }
  end

  def show
    category = Category.includes(:flash_cards).find(params.fetch(:id))
    flash_cards = category.flash_cards
    render json: {
      category: category,
      flash_cards: flash_cards
    }
  end

  def create
    category = Category.new(category_params)
    if category.save
      render json: { category: category, message: "Success!" }, status: 400
    else
      render json: { error: "Failed to Save!" }, status: 422
    end
  end

  def update
    category = Category.find(params.fetch(:id))
    if category.update(category_params)
      render json: { category: category, message: "Updated!" }, status: 400
    else
      render json: { error: "Failed to Update!" }, status: 422
    end
  end

  def destroy
    category = Category.find(params.fetch(:id))
    if category.destroy
      render json: { message: "Deleted!" }, status: 400
    else
      render json: { message: "Failed to Delete!" }, status: 422
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
