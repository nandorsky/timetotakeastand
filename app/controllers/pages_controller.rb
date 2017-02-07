class PagesController < ApplicationController
  def home
  	@stands = Stand.all
  	@do_something = Stand.where(type_of_stand: "Do Something")
  	@say_something = Stand.where(type_of_stand: "Say Something")
  	@give_something = Stand.where(type_of_stand: "Give Something")
  end
end
