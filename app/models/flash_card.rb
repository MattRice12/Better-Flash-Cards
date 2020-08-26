class FlashCard < ApplicationRecord
  belongs_to :category

  validates :question, presence: true
  validates :answer, presence: true
end
