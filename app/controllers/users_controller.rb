class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def address
    @address = Address.new
  end

  def address_create
    @address = Address.new(address_params)
    if @address.save
      redirect_to cart_products_path
    else
      redirect_to address_users_path
    end
  end

  def card
    card = Card.where(user_id: current_user.id)
    redirect_to action: "show" if card.exists?
  end

  def card_create
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    if params['payjp-token'].blank?
      redirect_to action: "show"
    else
      customer = Payjp::Customer.create(
      card: params['payjp-token'],
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to controller: "signup", action: "user_registration4"
      else
        redirect_to action: "pay"
      end
    end
  end

  private

  def address_params
    params.require(:address).permit(:zip, :prefecture, :city_name, :block_name, :bill_name).merge(user_id: current_user.id)
  end
end
