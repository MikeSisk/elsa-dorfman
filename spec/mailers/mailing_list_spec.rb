require "spec_helper"

describe MailingList do
  describe "new_subscriber" do
    let(:mail) { MailingList.new_subscriber }

    it "renders the headers" do
      mail.subject.should eq("New subscriber")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
