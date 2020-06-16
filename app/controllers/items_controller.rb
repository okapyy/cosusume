class ItemsController < ApplicationController
  def index
  end
  
  def new
    @item = Item.new
    @item.item_images.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end

  private
  def item_params
    params.require(:item).permit(:name, :brand, :detail, :age, :skin_color, :skin_condition).merge(user_id: current_user.id)
  end
end
