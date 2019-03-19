class Api::ItemsController < ApplicationController
  before_action :set_menu
  before_action :set_item, only: [:update, :destroy] 
  def index
    render json: @menu.items.all
  end
  def create
      item = @menu.item.new
    if item.save
      render json item
    else
      render json: { errors: item.errors }, status: :unprocessable_entity 
    end
  end
  def update
    render json: item
  end
  
  def destroy
    @item.destroy
    render json: { message: 'Item deleted' }
  end
private
  def set_item
    @item = @menu.items.find(params[:id])
  end
  def set_menu
    @menu = Menu.find(params[:menu_id])
  end
end
