class HomesController < ApplicationController
  def show_details
    @details=Profile.find(params[:id])
  end

  def index
    @show_info=Article.limit(6).order(created_at: :desc)
  end

  def show_info
    @show_info=Article.all
  end

  def show
    unless params[:id].nil?
    @show=Article.find(params[:id])
  else
    @show=Article.new
  end
  end

  def circle
    conditions = {:genre_ids => []}.merge(params[:conditions] || {})
    @conditions = OpenStruct.new(conditions)
    puts @conditions
    # ["0", "1", "0", "2"]という不要な0が入った
    # 状態になっているため["1", "2"]に整形
    @conditions.genre_ids.delete("0")
    relation = Profile.all
    unless @conditions.genre_ids.blank?#飛んできたidが空じゃなかったら

      relation = relation.where(:genre_id => @conditions.genre_ids)
    end
    @msg = relation.page(params[:page]).per(3)
  end

end
