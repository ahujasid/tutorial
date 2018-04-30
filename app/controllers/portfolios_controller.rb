class PortfoliosController < ApplicationController

	def index
		@p_items = Portfolio.all
	end

end
