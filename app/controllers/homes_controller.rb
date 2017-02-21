class HomesController < ApplicationController
  def index
    @index=Article.all
  end
  def show
    @show=Article.find(params[:id])
  end
  def circle

  end
end
