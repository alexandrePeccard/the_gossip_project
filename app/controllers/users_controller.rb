class UsersController < ApplicationController
	protect_from_forgery prepend: true
  skip_before_action :verify_authenticity_token
	before_action :set_user, only: [:update, :edit, :show, :destroy]

	def index
		@users = User.all
		render 'users/index'
	end

  def new
  	render 'users/new'
  end

  def create
  	@user = User.new(username: params[:username], email: params[:email], bio: params[:bio], password: params[:password])
  	@user.save
  	redirect_to "/login"
  end

  def show
  end

  def edit
  end

  def set_user
  	@user = User.find(params[:id])
  end

  def destroy
    @user.delete
    redirect_to "/users"
  end
end