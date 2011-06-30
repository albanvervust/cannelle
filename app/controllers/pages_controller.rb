class PagesController < ApplicationController
  
  def home
    @title = "Accueil"
  end

  def contact
    @title = "Contactez-nous"
  end
  
  def about
    @title = "Notre histoire"
  end
  
  def aide
    @title = "Aide"
  end

end