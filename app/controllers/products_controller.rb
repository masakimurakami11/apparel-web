class ProductsController < ApplicationController
  def index
    @products = Product.order("id ASC").limit(12)
  end

  def show
    @product = Product.find(params[:id])
    @images = @product.images
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
    else
      redirect_to root_path
    end
  end

  def cart
    @orders = Order.where(user_id: current_user.id)
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      redirect_to cart_products_path
    else
      redirect_to cart_products_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:count, :size, :color, :product_id).merge(user_id: current_user.id)
  end
end
