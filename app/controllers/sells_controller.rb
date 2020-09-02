class SellsController < ApplicationController

  def index
    @items = Item.all
  end
  
end
