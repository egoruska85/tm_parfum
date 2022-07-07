class CreateGendercategories < ActiveRecord::Migration[5.2]
  def change
    create_table :gendercategories do |t|
      t.references :category, foreign_key: true
      t.string :title
      t.string :title_tm

      t.timestamps
    end
  end
end
