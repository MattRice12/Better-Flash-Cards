class FlashCardsController < ApplicationController
  def show
    category = Category.find(params.fetch(:category_id))
    flash_card = FlashCard.find(params.fetch(:id))
    render json: {
      category: category,
      flash_card: flash_card    
    }
  end

  def create
    category = Category.find(params.fetch(:category_id))
    flash_card = FlashCard.new(flash_card_params)
    if flash_card.save
      render json: { category: category, flash_card: flash_card }, status: 400
    else
      render json: { error: "Failed to Save!" }, status: 422
    end
  end

  def update
    flash_card = FlashCard.find(params.fetch(:id))
    if flash_card.update(flash_card_params)
      render json: { flash_card: flash_card, message: "Updated!" }, status: 400
    else
      render json: { error: "Failed to Update!" }, status: 422
    end
  end

  def destroy
    flash_card = FlashCard.find(params.fetch(:id))
    if flash_card.destroy
      render json: { message: "Deleted!" }, status: 400
    else
      render json: { message: "Failed to Delete!" }, status: 422
    end
  end


  private
  def flash_card_params
    params.require(:flash_card).permit(:question, :answer, :link, :category_id)
  end
end
