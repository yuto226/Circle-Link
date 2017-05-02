class NeetsController < ApplicationController
  def index
  end

  def show
    #画像ネーム配列
   @neet_data = %w(yuto.png satoshi.png yuki.png atushi.png sakuthin.png)
  end
  def circle

  end
  def prof
    @data = generate_page(params[:id])
  end
  def bbb

  end

  private
  def generate_page(id)
    name=params[:id]
    File.open("#{name}.txt") do |file|
      @data = file.read.split(",")
  end
end
end
