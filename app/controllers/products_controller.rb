class ProductsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, only: [:create, :cart, :history, :destory]
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
      redirect_to product_path(@order.product_id)
    end
  end

  def cart
    @orders = Order.where(user_id: current_user.id, order_status_id: 1)
    @address = Address.where(user_id: current_user.id)
  end

  def purchase
    @orders = Order.where(user_id: current_user.id, order_status_id: 1)
    if @orders.update(order_status_id: 2) 
      redirect_to cart_products_path
    else       
      redirect_to cart_products_path
    end
  end

  def pay
    card = Card.where(user_id: current_user.id).first
    @orders = Order.where(user_id: current_user.id, order_status_id: 1)
    @total_price = (@orders.product.price.sum * 1.1)
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    charge = Payjp::Charge.create(
    amount: @total_price,
    customer: card.customer_id,
    currency: :'jpy',
    )
    @orders.update(order_status_id: 2)
    if @orders.save(validate: false)
      redirect_to cart_products_path
    else
      flash[:notice] = '問題が発生して処理を中止しました。'
      redirect_to root_path
    end
  end

  def history
    @orders = Order.where(user_id: current_user.id, order_status_id: 2)
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
