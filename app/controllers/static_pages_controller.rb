class StaticPagesController < ApplicationController
  def home
    @ideas = Idea.order("cached_votes_up DESC").limit(3)
  end
end
