class AddCategoryToFlashCards < ActiveRecord::Migration[6.0]
  def change
    add_reference :flash_cards, :category, null: false, foreign_key: true
  end
end
