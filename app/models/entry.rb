class Entry < ApplicationRecord
    belongs_to :category
    validates :calories, :protein, :carbohydrates, :fats, :meal_type, :category_id, presence: true
    validates :calories, :protein, :carbohydrates, :fats, numericality: { greater_than_or_equal_to: 0 }

    def day
        self.created_at.strftime("%b %e, %Y")
    end
end
