class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :title
      t.string :title_tm
      t.string :country
      t.string :country_tm
      t.references :gendercategory, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
