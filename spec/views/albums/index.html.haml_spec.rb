require 'spec_helper'

describe "albums/index.html.haml" do
  before(:each) do
    assign(:albums, [
      stub_model(Album,
        :name => "Name",
        :narrative => "MyText"
      ),
      stub_model(Album,
        :name => "Name",
        :narrative => "MyText"
      )
    ])
  end

  it "renders a list of albums" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
