require 'rails_helper'

RSpec.describe "routes for app", type: :routing do
    it "routes /login to the devise sessions controller" do
        expect(:get => "/login").to route_to(
            :controller => "devise/sessions",
            action: "new"
          )
    end

    it "routes /logout to the devise sessions  controller" do
        expect(:DELETE => "/logout").to route_to(
            :controller => "devise/sessions",
            action: "destroy"
          )
    end
    it "routes /register to the devise registrations controller" do
        expect(:get => "/register").to route_to(
            :controller => "devise/registrations",
            action: "new"
          )
    end

    it "routes /market_place_admin to the administrate controller" do
        expect(:get => "/market_place_admin").to route_to(
            :controller => "admin/users",
            action: "index"
          )
    end

end
