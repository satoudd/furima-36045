class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

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

def index
  @items = Item.includes(:user).order("created_at DESC")
end

def show
  @item = Item.find(params[:id])
end

  private

  def item_params
    params.require(:item).permit(:product_name, :image, :prices, :product_description, :category_id, :product_id, :shippingcharge_id, :shipping_area_id, :days_to_ship_id).merge(user_id: current_user.id)
  end

end
