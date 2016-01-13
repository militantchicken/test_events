require 'rails_helper'

RSpec.describe "UserSubs", type: :request do
  describe "GET /user_subs" do
    it "works! (now write some real specs)" do
      get user_subs_path
      expect(response).to have_http_status(200)
    end
  end
end
