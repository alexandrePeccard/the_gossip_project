class StaticPagesController < ApplicationController
	skip_before_action :verify_authenticity_token
  def home
  end

  def contact
  end

  def team
  end
end
