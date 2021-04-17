class PortfolioSetsController < ApplicationController
  def index
    @portfoilos = PortfolioSet.all
  end
end
