require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password => "Password",
        :phone => "Phone",
        :grade => "Grade",
        :image => "Image"
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password => "Password",
        :phone => "Phone",
        :grade => "Grade",
        :image => "Image"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
