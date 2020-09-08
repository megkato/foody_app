class SellsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
    unless @item.valid?
      @item.item_imgs.new
      render :new and return
    end
    @item.save
    redirect_to root_path
  end
  
end
