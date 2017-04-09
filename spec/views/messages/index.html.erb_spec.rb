require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :series => "Series",
        :title => "Title",
        :content => "Content",
        :costumes => "Costumes",
        :props => "Props",
        :featured => false,
        :user => nil
      ),
      Message.create!(
        :series => "Series",
        :title => "Title",
        :content => "Content",
        :costumes => "Costumes",
        :props => "Props",
        :featured => false,
        :user => nil
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "Series".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Costumes".to_s, :count => 2
    assert_select "tr>td", :text => "Props".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
