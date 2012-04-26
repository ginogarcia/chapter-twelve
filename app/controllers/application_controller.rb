class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  helper SessionsHelper
end
