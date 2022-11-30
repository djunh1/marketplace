module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    # guest.fullname ="Guest User"
    guest
  end

end
