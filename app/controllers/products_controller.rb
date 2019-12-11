class ProductsController < ApplicationController
  def index
    @products = Product.order("id DESC").limit(12)
  end
end
