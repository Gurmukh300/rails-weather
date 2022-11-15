require_relative "../services/current_weather_service"
class HomeController < ApplicationController

  def index
    @data = CurrentWeatherService.new(latitude: "-33.86785", longitude: "151.20732", units: "Metric").call

  end
end

# url = "https://api.openweathermap.org/data/2.5/weather?lat=-33.86785&lon=151.20732&units=Metric&appid=5b621b055d20d6ca988741eb2cfc6642"

# uri = URI(url)

# res = Net::HTTP.get_response(uri)

# @data = JSON.parse(res.body)
