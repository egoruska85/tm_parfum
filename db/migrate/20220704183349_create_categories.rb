class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :title_tm
      t.boolean :main

      t.timestamps
    end
  end
end
