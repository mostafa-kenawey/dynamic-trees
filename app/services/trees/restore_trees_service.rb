module Trees
  class RestoreTreesService < BaseTreesService

    def _execute
      update_trees_default_value
      restore_trees_list
    end

    private

    def update_trees_default_value
      Trees::CacheTreesService.new.execute unless trees_list?
    end

    def restore_trees_list
      trees_list
    end

  end
end