require 'spec_helper'

describe "images/show.html.haml" do
  before(:each) do
    @image = assign(:image, stub_model(Image))
  end

  it "renders attributes in <p>" do
    render
  end
end
