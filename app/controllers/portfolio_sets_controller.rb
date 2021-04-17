class PortfolioSetsController < ApplicationController
  def index
    @portfolio_items = PortfolioSet.all
  end

  def new
    @portfolio_item = PortfolioSet.new
  end

  def create
    @portfolio_item = PortfolioSet.new(params.require(:portfolio_set).permit(:title, :subtitle, :body, :main_image,
                                                                             :thumb_image))

    if @portfolio_item.save
      redirect_to portfolio_sets_path
    else
      render :new
    end
  end

  def show
    @portfolio_item = PortfolioSet.find(params[:id])
  end

  def edit
    @portfolio_item = PortfolioSet.find(params[:id])
  end

  def update
    @portfolio_item = PortfolioSet.find(params[:id])
    if @portfolio_item.update(params.require(:portfolio_set).permit(:title, :subtitle, :body, :main_image,
                                                                    :thumb_image))
      redirect_to portfolio_sets_path
    else
      render :edit
    end
  end

  def destroy
    @portfolio_item = PortfolioSet.find(params[:id])
    @portfolio_item.destroy

    redirect_to portfolio_sets_path
  end
end
