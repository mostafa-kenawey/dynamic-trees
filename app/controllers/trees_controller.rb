class TreesController < ApplicationController

  def index
    render_trees_list
  end

  def new
    Trees::CacheTreesService.new.execute
    render_trees_list
  end

  protected

  def render_trees_list
    render json: current_trees_list
  end

end
