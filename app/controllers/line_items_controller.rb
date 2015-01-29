class LineItemsController < ApplicationController

  def create
    line_item = @cart.add_product(params[:product_id])

    if line_item.valid?
      line_item.save
    else
      render products_path
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to "/cart"
  end
end
