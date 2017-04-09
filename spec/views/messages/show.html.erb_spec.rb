require 'rails_helper'

RSpec.describe "messages/show", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :series => "Series",
      :title => "Title",
      :content => "Content",
      :costumes => "Costumes",
      :props => "Props",
      :featured => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Series/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Costumes/)
    expect(rendered).to match(/Props/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
