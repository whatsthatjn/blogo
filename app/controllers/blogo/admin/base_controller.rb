module Blogo::Admin
  class BaseController < Blogo::ApplicationController
    # before_filter :ensure_authenticated!
    before_filter :login_required

    layout 'blogo/admin'

    private

    def ensure_authenticated!
      # redirect_to blogo_admin_login_path unless blogo_current_user      
    end

    def blogo_current_user
      # @blogo_current_user ||= Blogo::User.find(session[:blogo_user_id]) if session[:blogo_user_id]
      @blogo_current_user ||= Blogo::User.find_by_unionid(current_user.unionid) if current_user
    end
    helper_method :blogo_current_user
  end
end
