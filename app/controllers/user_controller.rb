class UserController < ApplicationController
	protect_from_forgery prepend: true, with: :exception
	skip_before_action :verify_authenticity_token
	before_action :set_csrf_token, if: :valid_get_request?

	private
	  def valid_get_request?
	    protect_against_forgery? && !request.xhr? && request.get?
	  end

	  def set_csrf_token
	    cookies[:csrf_token] = {
	      value: form_authenticity_token,
	      expires: 5.minutes.from_now,
	      secure: false
	    }
	  end

  public

  	def index
  		@users = User.all
  		render 'user/index'
  	end
	  def new
	  	@user = User.new
	  	render 'user/new'
	  end

	  def create
	  	u = User.new(username: params[:username], email: params[:email], bio: params[:bio])
	  	u.save
	  	redirect_to "/users"
	  end
end