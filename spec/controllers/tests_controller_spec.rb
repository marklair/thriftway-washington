require 'spec_helper'

describe TestsController do

  describe "GET 'edge_cases'" do
    it "returns http success" do
      get 'edge_cases'
      response.should be_success
    end
  end

  describe "GET 'main_tags'" do
    it "returns http success" do
      get 'main_tags'
      response.should be_success
    end
  end

  describe "GET 'components'" do
    it "returns http success" do
      get 'components'
      response.should be_success
    end
  end

  describe "GET 'theme'" do
    it "returns http success" do
      get 'theme'
      response.should be_success
    end
  end

end
