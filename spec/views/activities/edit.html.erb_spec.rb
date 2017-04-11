require 'rails_helper'

RSpec.describe "activities/edit", type: :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :key_verse => "MyString",
      :review => "MyString",
      :description => "MyString",
      :materials => "MyString",
      :media_ref => "MyString",
      :user => nil,
      :message => nil
    ))
  end

  it "renders the edit activity form" do
    render

    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do

      assert_select "input#activity_key_verse[name=?]", "activity[key_verse]"

      assert_select "input#activity_review[name=?]", "activity[review]"

      assert_select "input#activity_description[name=?]", "activity[description]"

      assert_select "input#activity_materials[name=?]", "activity[materials]"

      assert_select "input#activity_media_ref[name=?]", "activity[media_ref]"

      assert_select "input#activity_user_id[name=?]", "activity[user_id]"

      assert_select "input#activity_message_id[name=?]", "activity[message_id]"
    end
  end
end
