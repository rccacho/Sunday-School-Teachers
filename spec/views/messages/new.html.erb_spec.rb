require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      :series => "MyString",
      :title => "MyString",
      :content => "MyString",
      :costumes => "MyString",
      :props => "MyString",
      :featured => false,
      :user => nil
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input#message_series[name=?]", "message[series]"

      assert_select "input#message_title[name=?]", "message[title]"

      assert_select "input#message_content[name=?]", "message[content]"

      assert_select "input#message_costumes[name=?]", "message[costumes]"

      assert_select "input#message_props[name=?]", "message[props]"

      assert_select "input#message_featured[name=?]", "message[featured]"

      assert_select "input#message_user_id[name=?]", "message[user_id]"
    end
  end
end
