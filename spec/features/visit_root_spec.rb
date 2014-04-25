require 'spec_helper'

describe 'visiting the site' do
  describe "a new user visits the homepage" do
    it "says Hey Macarena" do
      visit("/")
      expect( page ).to have_content("Hey Macarena")
    end
  end
  describe "clicking hey macarena", js: true do
    it "should say Hey Gerald when you click the h1" do
      visit("/")
      page.find("h1", :text => "Hey Macarena").click
      expect( page ).to have_content("ANERACAM YEH")
    end
  end  
end