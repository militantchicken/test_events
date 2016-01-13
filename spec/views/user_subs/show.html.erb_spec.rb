require 'rails_helper'

RSpec.describe "user_subs/show", type: :view do
  before(:each) do
    @user_sub = assign(:user_sub, UserSub.create!(
      :user => nil,
      :subscription => nil,
      :moderator => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
