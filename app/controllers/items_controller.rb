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

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item.id)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end

  def newitem
    @items = Item.includes(:user).order("created_at DESC").page(params[:page]).per(25)
  end

  def makeupbase
    @items = Item.where(category: "化粧下地").page(params[:page]).order("created_at DESC").per(25)
  end

  def concealer
    @items = Item.where(category: "コンシーラー").page(params[:page]).order("created_at DESC").per(25)
  end

  def facepowder
    @items = Item.where(category: "フェイスパウダー").page(params[:page]).order("created_at DESC").per(25)
  end

  def foundation
    @items = Item.where(category: "ファンデーション").page(params[:page]).order("created_at DESC").per(25)
  end

  def highlight_shading
    @items = Item.where(category: 'ハイライト・シェーディング').page(params[:page]).order("created_at DESC").per(25)
  end

  def cheek
    @items = Item.where(category: 'チーク').page(params[:page]).order("created_at DESC").per(25)
  end

  def eye_shadow
    @items = Item.where(category: 'アイシャドウ').page(params[:page]).oeder("created_at DESC").per(25)
  end

  def eyeliner
    @items = Item.where(category: 'アイライナー').page(params[:page]).order("created_at DESC").per(25)
  end

  def mascara
    @items = Item.where(category: 'マスカラ').page(params[:page]).order("created_at DESC").per(25)
  end

  def eyebrow
    @items = Item.where(category: 'アイブロウ').page(params[:page]).order("created_at DESC").per(25)
  end

  def lipstick
    @items = Item.where(category: "口紅").order("created_at DESC").page(params[:page]).per(25)
  end

  def lipcare_cream
    @items = Item.where(category: "リップケア・リップクリーム").page(params[:page]).order("created_at DESC").per(25)
  end

  def lipgloss
    @items = Item.where(category: "リップグロス").page(params[:page]).order("created_at DESC").per(25)
  end

  private
  def item_params
    params.require(:item).permit(:name, :brand, :detail, :category, :evaluation, :age, :skin_color, :skin_condition, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
