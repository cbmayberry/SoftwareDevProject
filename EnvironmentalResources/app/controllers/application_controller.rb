class ApplicationController < ActionController::Base
end

 def current_controller?(names)
    names.include?(current_controller)
  end