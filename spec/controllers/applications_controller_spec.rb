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
    it "routes /register to the devise sessions controller" do
        expect(:get => "/register").to route_to(
            :controller => "devise/registrations",
            action: "new"
          )
    end

end
