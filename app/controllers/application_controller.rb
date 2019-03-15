class ApplicationController < ActionController::API

  def current_trees_list
    Trees::RestoreTreesService.new.execute
  end

end
