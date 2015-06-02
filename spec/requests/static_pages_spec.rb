require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'PersonalWeb'" do
      visit '/static_pages/home'
      expect(page).to have_content('PersonalWeb')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial PersonalWeb")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  
end