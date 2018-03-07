class Cat < ApplicationRecord
  COLORS = ['Black', 'Orange','White','Speckled']

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS }
  validates :sex, length: { is: 1 }

  has_many :cat_rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

  
end
