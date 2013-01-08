require 'spec_helper'


describe "StaticPages" do
  let(:base_title) { "Ruby on Rails Training App" }
  describe "GET /static_pages/home" do
    it "should work" do
      get static_pages_home_path
      response.status.should be(200)
    end

    
    
    it "should have the right title for home" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => "#{base_title} ")
                        #:text => "Home")
    end
     
  it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => "| Home")
    end
  
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