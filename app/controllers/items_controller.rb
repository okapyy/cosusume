class ItemsController < ApplicationController
  def index
    @items = Item.includes(:user, :item_images).order("created_at DESC").limit(10)
  end
  
  def new
    @item = Item.new
    @item.item_images.new
  end

  def create
    @item = Item.new(item_params)
    @item.save!
    redirect_to root_path
  end

  def show
    @item = Item.find(params[:id])
  end

  def newitem
  end

  private
  def item_params
    params.require(:item).permit(:name, :brand, :detail, :evaluation, :age, :skin_color, :skin_condition, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
