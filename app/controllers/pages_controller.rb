class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.limit(12)
  end
end
