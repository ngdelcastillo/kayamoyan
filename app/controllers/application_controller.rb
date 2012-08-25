class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_current

  def set_current
    if user_signed_in?
      Thread.current[:school] = current_user.school.id
    end
  end
end
