class PortfoliosController < ApplicationController

	def index
		@p_items = Portfolio.all
	end

	def new
		@p_item = Portfolio.new
	end

	def create
		@p_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @p_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


end
