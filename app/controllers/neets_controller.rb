class NeetsController < ApplicationController

  def show
    #画像ネーム配列
   @neet_data = %w(yuto.png satoshi.png yuki.png atushi.png sakuthin.png)
  end

  def prof
    @data = generate_page(params[:id])
  end

  private
  def generate_page(id)
    name=params[:id]
    File.open("#{name}.txt") do |file|
      @data = file.read.split(",")
  end
end
end
