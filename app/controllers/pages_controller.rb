class PagesController < ApplicationController
  
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact us"
  end
  
  def about
    @title = "About us"
  end
  
  def aide
    @title = "Need help ?"
  end

end