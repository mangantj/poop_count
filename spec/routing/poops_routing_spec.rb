require "rails_helper"

RSpec.describe PoopsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/poops").to route_to("poops#index")
    end

    it "routes to #new" do
      expect(get: "/poops/new").to route_to("poops#new")
    end

    it "routes to #show" do
      expect(get: "/poops/1").to route_to("poops#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/poops/1/edit").to route_to("poops#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/poops").to route_to("poops#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/poops/1").to route_to("poops#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/poops/1").to route_to("poops#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/poops/1").to route_to("poops#destroy", id: "1")
    end
  end
end
