class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :profile_exsiste?, only: [:new,:index]
layout'admin'

  def index
    @index=Article.where(admin_id:current_admin.id)
  end

  def show
    @show=Article.find(params[:id])
  end

  def new
    @admin=Article.new
    @new_event=Article.new
  end

  def create
    @admin=Article.new
    admin=Admin.find(current_admin.id)
    @new_event=admin.articles.new(admin_article_params)
    if @new_event.save
      redirect_to admins_index_path
    else
      render :new
    end
  end

def create_prof
  @genres = Genre.all
  @create_prof=Profile.new(admin_prof_params)
  @create_prof.admin_id=current_admin.id
  if @create_prof.save
    redirect_to admins_index_path
  else
    @new_prof=Profile.new
    render :new_prof
  end
end

  def edit_article
    @update_article=Article.find(params[:id])
    @edit_article=Article.find(params[:id])
    @id=params[:id]
  end

def update_article
  @update_article=Article.find(params[:id])
  if  @update_article.update(admin_article_params)
  redirect_to admins_index_path
else
  @edit_article=Article.find(params[:id])
  render :edit_article,{ edit_prof: @edit_article }
end
end

def delete
    @delete_article=Article.find(params[:id])
    @delete_article.delete
    redirect_to admins_index_path
end

def new_prof
  @new_prof=Profile.new
  @create_prof=Profile.new
  @genres = Genre.all
end

def edit_prof
  @update_prof=Profile.find(params[:id])
  @edit_prof=Profile.find(params[:id])
  @genres = Genre.all
end

def update_prof
  @update_prof=Profile.find(params[:id])
  if  @update_prof.update(admin_prof_params)
  redirect_to admins_index_path
else
  @edit_prof=Profile.find(params[:id])
 render :edit_prof, { edit_prof: @edit_prof }
end
end


  private
  #params系
  def admin_article_params
    params.require(:article).permit([:title,:contents])
  end
  def admin_prof_params
    params.require(:profile).permit([:prof,:username,:num,:place,:time_start,:time_end,:image,:genre_id])
  end
  #認証系
  def profile_exsiste?
    if Admin.find(current_admin.id).profile.nil?
       redirect_to admins_new_prof_path
     end
  end
end
