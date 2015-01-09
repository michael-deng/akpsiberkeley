class StaticPagesController < ApplicationController
  
  def home
  end

  def about
  end

  def careers
    @careerentries = CareerEntry.all
  end

  def awards
  end

  def abc
  end

  def bcs
  end

  def abv
  end

  def rush
  end

  def faq
  end

  def contact
  end
end
