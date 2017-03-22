class AdminsController < ApplicationController
  before_action :authenticate_admin!
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
    @new_event=admin.articles.new(admin_article_params)
    @new_event.save
    redirect_to admins_index_path
  end

  def edit_article
    @edit_article=Article.find(params[:id])
    @id=params[:id]
  end

def update_article
  @update_article=Article.find(params[:id])
  if  @update_article.update(admin_article_params)
  redirect_to admins_index_path
else
  redirect_to admins_edit_path
end
end

def delete
    @delete_article=Article.find(params[:id])
    @delete_article.delete
    redirect_to admins_index_path
end

def edit_prof
  @edit_prof=Profile.find(params[:id])
end

def update_prof
  @update_prof=Profile.find(params[:id])
  if  @update_prof.update(admin_prof_params)
  redirect_to admins_index_path
else
  redirect_to admins_edit_prof_path
end
end


  private
  def admin_set_params
    params.require(:admin).permit([:username])
  end
  def admin_article_params
    params.require(:article).permit([:title,:contents])
  end
  def admin_prof_params
    params.require(:profile).permit([:prof,:num,:place,:time,:image])
  end
end
