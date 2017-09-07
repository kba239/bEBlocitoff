class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "Your item was saved."
    else
      flash[:notice] = "There was an error. Your item was not saved."
    end
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
