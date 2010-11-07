require 'spec_helper'

describe "images/edit.html.haml" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :new_record? => false
    ))
  end

  it "renders the edit image form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => image_path(@image), :method => "post" do
    end
  end
end
