class StaticPagesController < ApplicationController
  def home
    @ideas = Idea.all
  end
end
