class ProductsController < ApplicationController
  def index
    @products = Product.order("id ASC").limit(12)
  end

  def show
    # @product = Product.find(params[:id])
  end
end
