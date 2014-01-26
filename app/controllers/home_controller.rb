class HomeController < ApplicationController
  def index
    @requesters = Requester.all
    @hash = ''
    @requesters.each do |requester|
      @hash += '[' + requester.latitude.to_s + ', ' + requester.longitude.to_s + ', "' + requester.name + '"],'
    end
  end
end
