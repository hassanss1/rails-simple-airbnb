class Flat < ApplicationRecord
  validates :name, :address, :description, presence: true
end
