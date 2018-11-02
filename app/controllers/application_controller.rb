class ApplicationController < ActionController::Base
	before_action Proc.new {
		# reset_session
		unless !session['id']
			@user = User.find(session['id'])
		end
	}
end