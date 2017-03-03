class HomesController < ApplicationController
  def index
    @index=Article.all
  end
  def show
    @show=Article.find(params[:id])
  end
  def circle

    @msg = Array.new
    if(request.post?)then
      if params['r1'] then
        for val in params['r1']
        @msg = Circle2.where janru:params['r1']
      end
    else
      @msg='no Check'
    end
  end

  end
end
