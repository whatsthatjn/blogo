class Blogo::ApplicationController < ::ApplicationController
  include Rails.application.routes.url_helpers

  before_filter :login_required

  # private 
  def blogo_current_user
      # @blogo_current_user ||= Blogo::User.find(session[:blogo_user_id]) if session[:blogo_user_id]
      @blogo_current_user ||= Blogo::User.find_by_unionid(current_user.unionid) if current_user
  end

end
