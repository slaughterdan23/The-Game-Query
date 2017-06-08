class HomeController < ApplicationController
  def index

    @response_game = HTTParty.get "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=*&limit=10&offset=0&order=popularity:desc:min&search=#{params[:search]}&filter[name][any]=#{params[:search]}",
    headers:{
    "X-Mashape-Key" => "poCTngFpaQmshjnD6vQA5i2cdFOup1jVegVjsnq38udr619BJH",
    "Accept" => "application/json"
    }

    @response_series = HTTParty.get "https://igdbcom-internet-game-database-v1.p.mashape.com/collections/?fields=*&limit=10&search=#{params[:search]}",
    headers:{
    "X-Mashape-Key" => "poCTngFpaQmshjnD6vQA5i2cdFOup1jVegVjsnq38udr619BJH",
    "Accept" => "application/json"
    }

    @response_character = HTTParty.get "https://igdbcom-internet-game-database-v1.p.mashape.com/characters/?fields=*&limit=10&search=#{params[:search]}",
  headers:{
    "X-Mashape-Key" => "poCTngFpaQmshjnD6vQA5i2cdFOup1jVegVjsnq38udr619BJH",
    "Accept" => "application/json"
  }

  end
end
