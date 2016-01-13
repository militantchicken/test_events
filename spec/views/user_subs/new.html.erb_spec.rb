require 'rails_helper'

RSpec.describe "user_subs/new", type: :view do
  before(:each) do
    assign(:user_sub, UserSub.new(
      :user => nil,
      :subscription => nil,
      :moderator => false
    ))
  end

  it "renders new user_sub form" do
    render

    assert_select "form[action=?][method=?]", user_subs_path, "post" do

      assert_select "input#user_sub_user_id[name=?]", "user_sub[user_id]"

      assert_select "input#user_sub_subscription_id[name=?]", "user_sub[subscription_id]"

      assert_select "input#user_sub_moderator[name=?]", "user_sub[moderator]"
    end
  end
end
