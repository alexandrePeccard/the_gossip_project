class LoginController < ApplicationController
	protect_from_forgery prepend: true
	skip_before_action :verify_authenticity_token

	def login
		render 'login/login.html.erb'
	end

  def login_check
    @user = User.find_by(email: params[:email])
    # puts @user.class
    if @user != "nil" || @user != "Nil"
  		if @user.password == params[:password]
        session[:id] = @user.id
        redirect_to '/profil'
      end
    else  
      redirect_to '/'
      # puts "mabite"
    end
  end

  def logout
  	reset_session
  	redirect_to '/'
  end
end
