class Gendercategory < ApplicationRecord
  belongs_to :category
  has_many :brands
end
