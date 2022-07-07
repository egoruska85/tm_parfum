class Brand < ApplicationRecord
  belongs_to :gendercategory
  belongs_to :category
  has_many_attached :image
end
