require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Start")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Kontakt")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "Wstep")
  end
  
  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Pomoc")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Zapisz sie!")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "O nas"
    response.should have_selector('title', :content => "Wstep")
    click_link "Pomoc"
    response.should have_selector('title', :content => "Pomoc")
    click_link "Kontakt"
    response.should have_selector('title', :content => "Kontakt")
    click_link "Start"
    response.should have_selector('title', :content => "Start")
    click_link "Zapisz się!"
    response.should have_selector('title', :content => "Zapisz sie!")
  end
end

