class Logo < ApplicationRecord
  has_one_attached :favicon
  has_one_attached :logo
end
