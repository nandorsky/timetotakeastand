class PagesController < ApplicationController
  def home
  	@stands = Stand.all
  end
end
