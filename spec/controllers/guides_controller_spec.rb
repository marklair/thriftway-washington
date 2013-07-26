require 'spec_helper'

describe GuidesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'bootstrap'" do
    it "returns http success" do
      get 'bootstrap'
      response.should be_success
    end
  end

end
