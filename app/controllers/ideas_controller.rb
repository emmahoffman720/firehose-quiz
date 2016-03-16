class IdeasController < ApplicationController
  def index
    @idea = Idea.order("RANDOM()").first
  end

  def create
    @idea = Idea.create(idea_params)
    if @idea.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  def layout
    
  end


  private

  def idea_params
    params.require(:idea).permit(:idea, :whatisit)
  end
end
