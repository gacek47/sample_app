class PagesController < ApplicationController
  def home
  @title = "Start"
  end

  def contact
  @title = "Kontakt"
  end

  def about
  @title = "Wstep"
  end
  
  def help
  @title = "Pomoc"
  end
end
