require 'spec_helper'

describe "subscribers/edit.html.haml" do
  before(:each) do
    @subscriber = assign(:subscriber, stub_model(Subscriber,
      :new_record? => false,
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :postal_code => "MyString",
      :country => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit subscriber form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => subscriber_path(@subscriber), :method => "post" do
      assert_select "input#subscriber_name", :name => "subscriber[name]"
      assert_select "input#subscriber_address1", :name => "subscriber[address1]"
      assert_select "input#subscriber_address2", :name => "subscriber[address2]"
      assert_select "input#subscriber_city", :name => "subscriber[city]"
      assert_select "input#subscriber_state", :name => "subscriber[state]"
      assert_select "input#subscriber_postal_code", :name => "subscriber[postal_code]"
      assert_select "input#subscriber_country", :name => "subscriber[country]"
      assert_select "input#subscriber_email", :name => "subscriber[email]"
    end
  end
end
