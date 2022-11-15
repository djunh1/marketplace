require 'rails_helper'

RSpec.describe "routes for app", type: :routing do
    it "routes /landing_page to the pages controller" do
      expect(get("/main")).to route_to("pages#landing_page")
    end

    it "routes /home to the pages controller" do
      expect(get("/home")).to route_to("pages#home")
    end
end
