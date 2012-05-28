class PagesController < ApplicationController
 
  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def terms
    @title = "Terms of Use"
  end

  def privacy
    @title = "Privacy Policy"
  end

  def help
    @title = "Help"
  end

  def contact
    @title = "Contact"
  end
end
