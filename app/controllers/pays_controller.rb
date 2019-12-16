class PaysController < ApplicationController
  def index
  end
  
  def pay
    @orders = Order.where(user_id: current_user.id, order_status_id: 1)
    @total_price = (@orders.product.price.sum * 1.1)
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    charge = Payjp::Charge.create(
    amount: @total_price,
    card: params['payjp-token'],
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

  def done
  end
end
