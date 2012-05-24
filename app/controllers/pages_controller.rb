class PagesController < ApplicationController
  def about
  end

  def terms
  end

  def privacy
  end

  def help
  end

  def contact
  end

  def home
    @users = User.all
  end
end
