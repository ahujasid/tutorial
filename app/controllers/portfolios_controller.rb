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

  def edit
  	@p_item = Portfolio.find(params[:id])
  end

  def update
  	@p_item = Portfolio.find(params[:id])
  	respond_to do |format|
      
      if @p_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
        
      else
        format.html { render :edit }
      end   
    end
  end


end
