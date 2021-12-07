class ApplicationController < ActionController::Base
  include SessionsHelper
end

 def current_controller?(names)
    names.include?(current_controller)
  end