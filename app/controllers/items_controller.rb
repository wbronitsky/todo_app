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

  def show
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update_attributes(params[:item])
    redirect_to items_url
  end
end
