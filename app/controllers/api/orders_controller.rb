class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
  end

  def create
    carted_products = current_user.cart
    subtotal_sum = 0

    carted_products.each do |carted_product|
      subtotal_sum += carted_product.product.price * carted_product.quantity
    end

    calculated_tax = subtotal_sum * 0.09
    calculated_total = subtotal_sum + calculated_tax


    @order = Order.new(
                       user_id: current_user.id,
                       subtotal: subtotal_sum,
                       tax: calculated_tax,
                       total: calculated_total
                      )

    @order.save

    carted_products.each do |carted_product|
      carted_product.status = "purchased"
      carted_product.order_id = @order.id
      carted_product.save
    end

    render 'show.json.jbuilder'
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end
end
