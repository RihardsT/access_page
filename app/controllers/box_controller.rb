class BoxController < ApplicationController
  def index
    @box_items = Box.where(category: params[:cat])
  end

  def new
    @box_item = Box.new
  end

  def show
    @box_item = Box.find(params[:id])
  end

  def edit
    @box_item = Box.find(params[:id])
  end

  def update
		@box_item = Box.find(params[:id])
 		if @box_item.update_attributes(box_item_params)
			redirect_to @box_item
		else
			render 'edit'
		end
	end

  private
		def box_item_params
			params.require(:box).permit(:title, :content, :category)
		end
end
