require 'rails_helper'

RSpec.describe "user_subs/index", type: :view do
  before(:each) do
    assign(:user_subs, [
      UserSub.create!(
        :user => nil,
        :subscription => nil,
        :moderator => false
      ),
      UserSub.create!(
        :user => nil,
        :subscription => nil,
        :moderator => false
      )
    ])
  end

  it "renders a list of user_subs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
