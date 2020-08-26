class CreateFlashCards < ActiveRecord::Migration[6.0]
  def change
    create_table :flash_cards do |t|
      t.text :question, null: false, default: ""
      t.text :answer, null: false, default: ""
      t.text :link, limit: 2000

      t.timestamps
    end
  end
end
