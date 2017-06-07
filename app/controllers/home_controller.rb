class HomeController < ApplicationController
  def index

    @response_game = HTTParty.get "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=*&limit=10&offset=0&order=release_dates.date%3Adesc&search=#{params[:search]}&filter[name][in]=#{params[:search]}",
    headers:{
    "X-Mashape-Key" => "w3limrbh6zmshFMoPq8N3z59Lqp9p1wObHdjsnU5TkTVaDzB40",
    "Accept" => "application/json"
    }

    @response_series = HTTParty.get "https://igdbcom-internet-game-database-v1.p.mashape.com/collections/?fields=name&limit=10&search=#{params[:search]}",
    headers:{
    "X-Mashape-Key" => "w3limrbh6zmshFMoPq8N3z59Lqp9p1wObHdjsnU5TkTVaDzB40",
    "Accept" => "application/json"
    }

    @response_character = HTTParty.get "https://igdbcom-internet-game-database-v1.p.mashape.com/characters/?fields=name&limit=10&search=#{params[:search]}",
  headers:{
    "X-Mashape-Key" => "w3limrbh6zmshFMoPq8N3z59Lqp9p1wObHdjsnU5TkTVaDzB40",
    "Accept" => "application/json"
  }

  end
end
