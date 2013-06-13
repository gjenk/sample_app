require 'spec_helper'

describe "Static pages" do

    subject { page }

    describe "Contact page" do
        before {visit contact_path}

        it {should have_selector('h1',     text: 'Contact') }
        it {should have_selector('title',  text: full_title('Contact')) }

    end



    describe "Home page" do
        before { visit root_path }
        
        it { should have_selector('h1', text: 'Sample App') }
        it { should have_selector('title', text: full_title('')) }
        it { should_not have_selector('title', text: '| Home') }
    end

    describe "Help page" do

        it "should have the content 'Help'" do
            visit help_path
            page.should have_content('Help')
        end

        it "should have the title 'Help'" do
            visit help_path
            page.should have_selector('title', 
                                      :text => full_title('Help'))
        end

    end

    describe "About page" do
        
        it "should have the content 'About Us'" do
            visit about_path
            page.should have_content('About Us')
        end

        it "should have the title 'About Us'" do
            visit about_path
            page.should have_selector('title',
                                      :text => full_title('About Us'))
        end

    end

end

      
