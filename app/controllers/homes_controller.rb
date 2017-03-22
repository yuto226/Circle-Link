class HomesController < ApplicationController
  def index
    @index=Article.limit(6).order(created_at: :desc)
  end
  def show
    @show=Article.find(params[:id])
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
    @msg = relation

  end
end
