class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    

    set_page_option

  end

  attr_accessor :category

  def set_page_option
    if params[:locale] == 'ru'
    @page_title = category.title + " | " + t('page_title')
  elsif params[:locale] == 'tm'
    @page_title = category.title_tm + " | " + t('page_title')
  else
    @page_title = category.title + " | " + t('page_title')
  end

  end


end
