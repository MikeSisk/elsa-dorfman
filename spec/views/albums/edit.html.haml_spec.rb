require 'spec_helper'

describe "albums/edit.html.haml" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :new_record? => false,
      :name => "MyString",
      :narrative => "MyText"
    ))
  end

  it "renders the edit album form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => album_path(@album), :method => "post" do
      assert_select "input#album_name", :name => "album[name]"
      assert_select "textarea#album_narrative", :name => "album[narrative]"
    end
  end
end
