class CreateCarouselActives < ActiveRecord::Migration[5.2]
  def change
    create_table :carousel_actives do |t|
      t.string :title_ru
      t.string :title_tm
      t.text :text_ru
      t.text :text_tm
      t.string :link

      t.timestamps
    end
  end
end
