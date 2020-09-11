class SellsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    # @item.item_image.new
  end

  def create
    @item = Item.new(item_params)
    unless @item.valid?
      @item.item_image.new
      render :new and return
    end
    @item.save
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :price, :prefecture_code, :brand_id, :pref_id, :size_id, :item_condition_id, :postage_payer_id, :preparation_day_id, :postage_type_id, :category_id, :trading_status, item_images_attributes: [:url, :_destroy, :id]).merge(seller_id: current_user.id)
  end
  
end
