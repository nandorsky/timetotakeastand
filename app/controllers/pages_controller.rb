class PagesController < ApplicationController
  def home
  	@stands = Stand.all
  	@two_minutes = Stand.where(time: "2 Minutes", status: "active")
  	@one_hour = Stand.where(time: "1 Hour")
  	@one_day = Stand.where(time: "1 Day")
  	@multiple_days = Stand.where(time: "Multiple Days")
  end
end
