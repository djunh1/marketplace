module ApplicationHelper

    def avatar_url(user)
        if !user.main_image.blank?
          user.main_image
        else
           ActionController::Base.helpers.asset_path('default.png')
        end
      end
end
