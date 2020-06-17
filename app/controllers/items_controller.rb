class ItemsController < ApplicationController
  def index
    @items = Item.all.includes(:item_images).order("created_at DESC").limit(10)
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

  private
  def item_params
    params.require(:item).permit(:name, :brand, :detail, :age, :skin_color, :skin_condition, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
