require 'rails_helper'

RSpec.describe "activities/show", type: :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :key_verse => "Key Verse",
      :review => "Review",
      :description => "Description",
      :materials => "Materials",
      :media_ref => "Media Ref",
      :user => nil,
      :message => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Key Verse/)
    expect(rendered).to match(/Review/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Materials/)
    expect(rendered).to match(/Media Ref/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
