#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: "sqlite3", database: "pizzashop.db" }

class Product < ActiveRecord::Base
end

get '/' do
  @product = Product.all
  erb :index
end

get '/cart/:id' do
  @pizza = Product.find(params[:id])
  erb :cart
end

get '/about' do
  erb :about
end

get '/contacts' do
  erb :contacts
end