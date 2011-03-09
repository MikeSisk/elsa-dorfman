require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'about_elsa'" do
    it "should be successful" do
      get 'about_elsa'
      response.should be_success
    end
  end

  describe "GET 'about_camera'" do
    it "should be successful" do
      get 'about_camera'
      response.should be_success
    end
  end

  describe "GET 'donate'" do
    it "should be successful" do
      get 'donate'
      response.should be_success
    end
  end

end
