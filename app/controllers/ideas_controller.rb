class IdeasController < ApplicationController
  def index
    @idea = Idea.order("RANDOM()").first
  end

  def new
    @idea = Idea.new
  end
end
