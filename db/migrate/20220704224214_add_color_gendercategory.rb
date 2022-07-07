class AddColorGendercategory < ActiveRecord::Migration[5.2]
  def change
    add_column :gendercategories, :color, :string
  end
end
