class GendercategoriesController < ApplicationController
  def index

  end
  def show
    @gendercategory = Gendercategory.find(params[:id])

    @category = Category.where(id: @gendercategory.category_id)
    @category.each do |category|
      @gendercategories = Gendercategory.where(category_id: category.id)
    end
  end
end
