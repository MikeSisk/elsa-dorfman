require 'spec_helper'

describe "albums/show.html.haml" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :name => "Name",
      :narrative => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
