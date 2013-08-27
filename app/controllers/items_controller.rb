class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  end

  def create
    item = Item.new(params[:item])

    if item.save
      redirect_to item
    else
      flash[:messages] ||= []
      flash[:messages] << "Item not saved"
    end
  end
end
