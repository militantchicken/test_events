require 'rails_helper'

RSpec.describe "user_subs/edit", type: :view do
  before(:each) do
    @user_sub = assign(:user_sub, UserSub.create!(
      :user => nil,
      :subscription => nil,
      :moderator => false
    ))
  end

  it "renders the edit user_sub form" do
    render

    assert_select "form[action=?][method=?]", user_sub_path(@user_sub), "post" do

      assert_select "input#user_sub_user_id[name=?]", "user_sub[user_id]"

      assert_select "input#user_sub_subscription_id[name=?]", "user_sub[subscription_id]"

      assert_select "input#user_sub_moderator[name=?]", "user_sub[moderator]"
    end
  end
end
