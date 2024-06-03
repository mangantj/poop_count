class ApplicationController < ActionController::Base
  include Pagy::Backend
  around_action :set_time_zone, if: :current_user

  private
  def set_time_zone(&block)
    Time.use_zone(current_user.time_zone, &block)
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to unauthenticated_root_path, alert: exception.message }
    end
  end
end
