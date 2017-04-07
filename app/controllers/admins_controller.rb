class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :profile_exsiste?, only: [:new,:index,:edit_prof]
layout'admin'

  def index
    @index=Article.where(admin_id:current_admin.id)
    @image=Profile.find_by(admin_id:current_admin.id)
  end

  def show
    @show=Article.find(params[:id])
  end

  def new
    @admin=Article.new
    @new_event=Article.new
    @limit_msg=10-Article.where(admin_id:current_admin.id).count
  end

  def create
    @admin=Article.new
    admin=Admin.find(current_admin.id)
    @new_event=admin.articles.new(admin_article_params)
    if @new_event.save
      redirect_to admins_index_path
    else
      @limit_msg=10-Article.where(admin_id:current_admin.id).count
      @admin=admin.articles.new(admin_article_params)
      render :new
    end
  end

def create_prof
  @genres = Genre.all
  @kinds = Kind.all
  @create_prof=Profile.new(admin_prof_params)
  @create_prof.admin_id=current_admin.id
  if @create_prof.save
    redirect_to admins_index_path
  else
    @new_prof=Profile.new(admin_prof_params)
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
  @kinds = Kind.all

end

def edit_prof
  @update_prof=Profile.find_by(admin_id:params[:id])
  @edit_prof=Profile.find_by(admin_id:params[:id])
  @genres = Genre.all
  @kinds = Kind.all
end

def update_prof
  @update_prof=Profile.find_by(admin_id:params[:id])
  if  @update_prof.update(admin_prof_params)
  redirect_to admins_index_path
else
  @edit_prof=Profile.find_by(admin_id:params[:id])
 render :edit_prof, { edit_prof: @edit_prof }
end
end


  private
  #params系
  def admin_article_params
    params.require(:article).permit([:title,:contents])
  end
  def admin_prof_params
    params.require(:profile).permit([:prof,:username,:num,:place,:time_start,:time_end,
      :time_start2,:time_end2,:week_day,:week_day2,:twitter,
      :image,:admin_id,:genre_id,:kind_id,:pub_key,:more_week])
  end
  #認証系
  def profile_exsiste?
    if Admin.find(current_admin.id).profile.nil?
       redirect_to admins_new_prof_path
     end
  end
end
