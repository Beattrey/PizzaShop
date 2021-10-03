# frozen_string_literal: true
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'pizzashop.db' }

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
  @product = Product.all
  erb :index
end

get '/product/:id' do
  @pizza = Product.find(params[:id])
  erb :product
end

get '/about' do
  erb :about
end

get '/contacts' do
  erb :contacts
end

get '/cart' do
  erb :cart
end

post '/cart' do
  @o = Order.new
  @orders_input = params[:orders]
  @items = parse_orders_input(@orders_input)

  @items.each do |item|
    item[0] = Product.find(item[0])
  end
  erb :cart
end

get '/order' do
  @o = Order.all
  erb :order
end

get '/success' do
  erb :success
end

post '/order' do
  @o = Order.create params[:order]
  erb :success
end

# разделяем полученную строку с localstorage
def parse_orders_input(orders_input)
  s1 = orders_input.split(/,/)

  arr = []

  s1.each do |x|
    s2 = x.split(/=/)
    s3 = s2[0].split(/_/)

    id = s3[1]
    cnt = s2[1]

    arr2 = [id, cnt]
    arr.push arr2
  end
  arr
end

