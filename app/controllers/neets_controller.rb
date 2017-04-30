class NeetsController < ApplicationController
layout 'neet_layout'
  def index
    
  end

  def show
    #画像ネーム配列
   @neet_data = %w(yuto.png satoshi.png yuki.png atushi.png sakuthin.png)  
  end


end
