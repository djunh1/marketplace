class ApplicationController < ActionController::Base
    before_action :set_variables
    include CurrentUserConcern

    def set_variables
        #Set these for application wide values.
         @company_name = "Gametime"
    end
end
