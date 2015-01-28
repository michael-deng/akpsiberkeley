class StaticPagesController < ApplicationController
  
  def home
  end

  def about
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

  def eboard_actives
    @actives = Active.all.sort_by{ |a| a.name.split(' ')[a.name.split(' ').length - 1].downcase }
    @eboard_actives = []
    for i in 0 ... @actives.size
      if !@actives[i].eboard_position.empty?
        @eboard_actives.push(@actives[i])
      end
    end
  end
end
