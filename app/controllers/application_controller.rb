class ApplicationController < ActionController::Base
	before_action Proc.new {
		unless !session['id']
			@user = User.find(session['id'])
		end
	}
end