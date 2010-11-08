require 'spec_helper'

describe "albums/new.html.haml" do
  before(:each) do
    assign(:album, stub_model(Album,
      :name => "MyString",
      :narrative => "MyText"
    ).as_new_record)
  end

  it "renders new album form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => albums_path, :method => "post" do
      assert_select "input#album_name", :name => "album[name]"
      assert_select "textarea#album_narrative", :name => "album[narrative]"
    end
  end
end
