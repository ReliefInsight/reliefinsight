class HomeController < ApplicationController
  def index
    @requesters = Requester.all
    @hash = Gmaps4rails.build_markers(@requesters) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.title user.name
    end
  end

end
