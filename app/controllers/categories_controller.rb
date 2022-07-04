class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    set_page_option
  end
  attr_accessor :category

  def set_page_option
    set_meta_tags category.slice(:title)
  end
end
