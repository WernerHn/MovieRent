class ApplicationController < ActionController::Base

  before_action :authenticate_user!



  helper_method :current_cart

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
end


