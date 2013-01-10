require 'spec_helper'

describe "StaticPages" do
  subject { page }
  let(:base_title) { "Ruby on Rails Training App" }

  describe "Home page" do
    it "should work" do
      get root_path
      response.status.should be(200)
    end
    describe "visits" do
      before { visit root_path }
      it { should have_content('Ruby on Rails Training') }
      it { should have_selector('h1', :text => 'Training Application') }
      it { should have_selector('title', :text => "#{base_title}") }
      it { should_not have_selector('title', :text => "| Home") }
    end
  end

  describe "Help page" do

    before { visit help_path }
    it { should have_selector('h1', :text => "Help") }
    it { should have_selector('title', :text => "#{base_title} | Help") }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', :text => 'About Us') }
    it { should have_selector('title', :text => "#{base_title} | About Us") }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', :text => 'Contact') }
    it { should have_selector('title', :text => "#{base_title} | Contact") }
  end
end

# describe "StaticPages" do
# describe "Home page" do
# describe "GET /static_pages/home" do
# it "works! (now write some real specs)" do
# # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
# get static_pages_home_path
# response.status.should be(200)
# end
# it "should have the content 'Training App'" do
# visit '/static_pages/home'
# page.should have_content('Training App')
# end
# it "should have the h1 'Training App'" do
# visit '/static_pages/home'
# page.should have_selector('h1', :text => 'Home')
# end
# end
# end
# describe "Help page" do
# describe "GET /static_pages/home" do
# it "testing page" do
# get static_pages_help_path
# response.status.should be(200)
# end
# it "shoule have 'test' in h1" do
# visit '/static_pages/help'
# page.should have_selector('h1', :text => 'test')
# end
# end
# end
# describe "Contact page" do
# describe "GET /static_pages/contact" do
# it "shoule have 'test' in h1" do
# visit '/static_pages/contact'
# page.should have_selector('h1', :text => 'test')
# end
# end
# end
# end