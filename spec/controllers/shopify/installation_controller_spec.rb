require 'rails_helper'

RSpec.describe Shopify::InstallationController, type: :controller do

  describe "GET #finalize" do
    it "returns http success" do
      get :finalize
      expect(response).to have_http_status(:success)
    end
  end

end
