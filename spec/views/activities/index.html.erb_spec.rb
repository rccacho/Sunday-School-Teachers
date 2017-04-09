require 'rails_helper'

RSpec.describe "activities/index", type: :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :key_verse => "Key Verse",
        :review => "Review",
        :description => "Description",
        :materials => "Materials",
        :media_ref => "Media Ref",
        :user => nil,
        :message => nil
      ),
      Activity.create!(
        :key_verse => "Key Verse",
        :review => "Review",
        :description => "Description",
        :materials => "Materials",
        :media_ref => "Media Ref",
        :user => nil,
        :message => nil
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Key Verse".to_s, :count => 2
    assert_select "tr>td", :text => "Review".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Materials".to_s, :count => 2
    assert_select "tr>td", :text => "Media Ref".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
