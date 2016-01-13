require 'rails_helper'

RSpec.describe "subscriptions/edit", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :title => "MyString",
      :sub_user_count => 1,
      :category => nil,
      :description => "MyString",
      :user => nil
    ))
  end

  it "renders the edit subscription form" do
    render

    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do

      assert_select "input#subscription_title[name=?]", "subscription[title]"

      assert_select "input#subscription_sub_user_count[name=?]", "subscription[sub_user_count]"

      assert_select "input#subscription_category_id[name=?]", "subscription[category_id]"

      assert_select "input#subscription_description[name=?]", "subscription[description]"

      assert_select "input#subscription_user_id[name=?]", "subscription[user_id]"
    end
  end
end
