class ApplicationController < ActionController::Base
    def toastr(type, body)
        flash["#{type}"] = body
    end
end