class Category < ApplicationRecord
  has_many :gendercategories
  has_many :brands
end
