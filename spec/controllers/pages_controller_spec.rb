require 'spec_helper'
describe PagesController do

  integrate_views
  before(:each) do
    @base_title = "RoR Tutorial Sample App"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  it "should have the right title" do
    get 'home'
    response.should have_tag("title",
                               @base_title + " | Home")
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  it "should have the right title" do
    get 'contact'
    response.should have_tag("title",
                               @base_title + " | Contact")
  end


  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end
  
  it "should have the right title" do
    get 'about'
    response.should have_tag("title",
                               @base_title + " | About")
  end
  
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
  end
  
  it "should have the right title" do
    get 'help'
    response.should have_tag("title",
                               @base_title + " | Help")
  end
  
  
end
