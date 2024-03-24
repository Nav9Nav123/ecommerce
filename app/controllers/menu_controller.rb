class MenuController < ApplicationController
  before_action :set_cats

  def index
    @page = 'menu'
    @products = Product.all
  end

  def search
    query = params[:search]
    results = Product.where('name LIKE ?', "%#{query}%") # fixed typo from resuts to results
    
    if params[:filter] == 'Select Filter'
      @products = results
    else
      filter_param = params[:filter].gsub(' ', '_').downcase # Removed the unnecessary bang (!) operator
      @products = results.where("#{filter_param} = ?", true)
    end

    # Assuming you want to render 'index' or some specific view after search
    render 'index'
  end

  private

  def set_cats
    @cats = Category.all.where(display: true)
  end
end
