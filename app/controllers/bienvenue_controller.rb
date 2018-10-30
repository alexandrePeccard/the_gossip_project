class BienvenueController < ApplicationController
  def index
  	@user = params["user"]
  end
end
