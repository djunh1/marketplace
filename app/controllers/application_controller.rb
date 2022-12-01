class ApplicationController < ActionController::Base
    before_action :set_variables
    include CurrentUserConcern

    def set_variables
        #Set these for application wide values.
         @company_name = "The Desk (TM, LLC, PLLC, Esquire, CMT, Dr etc)"
    end
end
