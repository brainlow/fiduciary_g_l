class HomeController < ApplicationController
  def index
    render("/home.html.erb")
  end
end
