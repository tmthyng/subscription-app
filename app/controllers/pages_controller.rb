class PagesController < ApplicationController
  def home
    @pages = Page.all
  end
end
