require 'spec_helper'

describe "Static pages" do
  
   describe "Home page" do

      it "should have the content 'Sample App'" do
        
         visit '/static_pages/home'
         page.should have_selector('h1', :text => 'Sample App')

      end

      it "should have the right title" do
      	visit '/static_pages/home'
      	page.should have_selector('title', :text => "Ruby Tutorial | Home")
      end
   end
   describe "Contact Page" do

      it "should have the h1 'Contact'" do
        
         visit '/static_pages/contact'
         page.should have_selector('h1', :text => 'Contact')

      end

      it "should have the right title" do
      	visit '/static_pages/contact'
      	page.should have_selector('title', :text => "Ruby Tutorial | Contact")
      end
   end


end
