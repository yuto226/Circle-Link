class AdminsController < ApplicationController
layout'admin'
def index
  @index=Article.where(admin_id:current_admin.id)
end

def show
  @show=Article.find(params[:id])
end
  def new
    @admin=Article.new
  end

  def create
    admin=Admin.find(current_admin.id)
    @new_event=admin.articles.new(admin_new_article_params)
    @new_event.save
    redirect_to admins_index_path
  end

  private
  def admin_set_params
    params.require(:admin).permit([:username])
  end
  def admin_new_article_params
    params.require(:article).permit([:title,:contents])
  end
end
