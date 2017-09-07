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

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was deleted successfully."
    else
      flash[:notice] = "There was an error. Your item was not deleted."
    end
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
