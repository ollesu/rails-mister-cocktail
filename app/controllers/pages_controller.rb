class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.limit(6)
  end
end
