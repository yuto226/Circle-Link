class NeetProfsController < ApplicationController
layout 'neet_layout'
require 'ostruct'
  def index
    case params[:id]
  when "1" then
    File.open('yuto.txt') do |file|
      @data = file.read.split(",")
    end
  when "2" then
    File.open('satoshi.txt') do |file|
    @data = file.read.split(",")
    end

  when "3" then
    File.open('yuki.txt') do |file|
    @data = file.read.split(",")
    end

  when "4" then
    File.open('atushi.txt') do |file|
    @data = file.read.split(",")
    end

  when "5" then
    File.open('sakuthin.txt') do |file|
    @data = file.read.split(",")
    end
    

  end
end


  def show
  end
end
