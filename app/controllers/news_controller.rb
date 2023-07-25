require 'net/http'
require 'rss'

class NewsController < ApplicationController
  def index
    url = URI("https://www.chess.com/rss/news")
    response = Net::HTTP.get_response(url)
    @news = RSS::Parser.parse(response.body).items.first(10)
  end
end
