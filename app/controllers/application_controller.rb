class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  add_flash_types :success, :info, :warning, :danger
end
