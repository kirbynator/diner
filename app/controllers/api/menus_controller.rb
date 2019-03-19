class Api::MenusController < ApplicationController
  before_action :set_menu, only: [:update, :destroy] 
  def index
    render json: Menu.all
  end
  def create
      menu = Menu.new
    if menu.save
      render json: menu
    else
      render json: { errors: menu.errors }, status: :unprocessable_entity 
    end
  end
  def update
    render json: menu
  end
  
  def destroy
    @menu.destroy
    render json: { message: 'Menu deleted' }
  end
private
  def set_menu
    @menu = Menu.find(params[:id])
  end
end
