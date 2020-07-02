class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @items = user.items.page(params[:page]).per(3).order("created_at DESC")
  end
end
