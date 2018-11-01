class ProfilController < ApplicationController
  def index
  	likes = User.all
  	# puts likes.size
  end
end
