class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  if @item.save
    redirect_to root_path
  else
    render :new
  end
end

  private

  def item_params
    params.require(:item).permit(:product_name, :prices, :product_description, :category_id, :product_id, :shippingcharge_id, :days_to_ship_id).merge(user_id: current_user.id)
  end

end
