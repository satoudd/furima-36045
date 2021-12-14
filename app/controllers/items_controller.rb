class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, except: [:index, :show, :new, :create, :update]

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
end

def edit
end

def update
 if @item.update(item_params)
    redirect_to root_path
  else
    render :edit
  end
end

def destroy
  @item.destroy
  redirect_to root_path
end

  private

  def item_params
    params.require(:item).permit(:product_name, :image, :prices, :product_description, :category_id, :product_id, :shippingcharge_id, :shipping_area_id, :days_to_ship_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    unless user_signed_in? && current_user == @item.user
      redirect_to action: :index
    end
  end
end
