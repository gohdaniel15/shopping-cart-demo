class CartsController < ApplicationController

  def show
    if current_user
      cart_ids = $redis.smembers current_user_cart
    else
      cart_ids = session[:cart] || []
    end
    @products = Product.find(cart_ids)
  end

  def add
    if current_user
      $redis.sadd current_user_cart, params[:product_id]
    else
      session[:cart] ||= []
      session[:cart] << params[:product_id]
    end
    redirect_to products_path
  end

  def remove
    if current_user
      $redis.srem current_user_cart, params[:product_id]
    else
      session[:cart].delete(params[:product_id])
    end
    redirect_to products_path
  end

  private

  def current_user_cart
    "cart#{current_user.id}"
  end

end
