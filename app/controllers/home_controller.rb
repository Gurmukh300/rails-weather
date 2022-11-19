require_relative "../services/current_weather_service"
class HomeController < ApplicationController

  def index
    data = CurrentWeatherService.new(latitude: "-33.86785", longitude: "151.20732", units: "Metric").call
    @weather = Weather.new(data)
  end
end



# uri = URI(url)

# res = Net::HTTP.get_response(uri)

# @data = JSON.parse(res.body)
