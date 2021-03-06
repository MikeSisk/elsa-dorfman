require 'spec_helper'

describe AlbumsController do

  def mock_album(stubs={})
    (@mock_album ||= mock_model(Album).as_null_object).tap do |album|
      album.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all albums as @albums" do
      Album.stub(:all) { [mock_album] }
      get :index
      assigns(:albums).should eq([mock_album])
    end
  end

  describe "GET show" do
    it "assigns the requested album as @album" do
      Album.stub(:find).with("37") { mock_album }
      get :show, :id => "37"
      assigns(:album).should be(mock_album)
    end
  end

  describe "GET new" do
    it "assigns a new album as @album" do
      Album.stub(:new) { mock_album }
      get :new
      assigns(:album).should be(mock_album)
    end
  end

  describe "GET edit" do
    it "assigns the requested album as @album" do
      Album.stub(:find).with("37") { mock_album }
      get :edit, :id => "37"
      assigns(:album).should be(mock_album)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created album as @album" do
        Album.stub(:new).with({'these' => 'params'}) { mock_album(:save => true) }
        post :create, :album => {'these' => 'params'}
        assigns(:album).should be(mock_album)
      end

      it "redirects to the created album" do
        Album.stub(:new) { mock_album(:save => true) }
        post :create, :album => {}
        response.should redirect_to(album_url(mock_album))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved album as @album" do
        Album.stub(:new).with({'these' => 'params'}) { mock_album(:save => false) }
        post :create, :album => {'these' => 'params'}
        assigns(:album).should be(mock_album)
      end

      it "re-renders the 'new' template" do
        Album.stub(:new) { mock_album(:save => false) }
        post :create, :album => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested album" do
        Album.should_receive(:find).with("37") { mock_album }
        mock_album.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :album => {'these' => 'params'}
      end

      it "assigns the requested album as @album" do
        Album.stub(:find) { mock_album(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:album).should be(mock_album)
      end

      it "redirects to the album" do
        Album.stub(:find) { mock_album(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(album_url(mock_album))
      end
    end

    describe "with invalid params" do
      it "assigns the album as @album" do
        Album.stub(:find) { mock_album(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:album).should be(mock_album)
      end

      it "re-renders the 'edit' template" do
        Album.stub(:find) { mock_album(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested album" do
      Album.should_receive(:find).with("37") { mock_album }
      mock_album.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the albums list" do
      Album.stub(:find) { mock_album }
      delete :destroy, :id => "1"
      response.should redirect_to(albums_url)
    end
  end

end
