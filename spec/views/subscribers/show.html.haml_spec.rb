require 'spec_helper'

describe "subscribers/show.html.haml" do
  before(:each) do
    @subscriber = assign(:subscriber, stub_model(Subscriber,
      :name => "Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :postal_code => "Postal Code",
      :country => "Country",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Address1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Address2/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Postal Code/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
