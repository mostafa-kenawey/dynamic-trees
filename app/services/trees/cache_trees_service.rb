module Trees
  class CacheTreesService < ::BaseService

    def _execute
      cache_trees_list
    end

    private

    def cache_trees_list
      cache.write(:trees_list, Trees::FetchTreesService.new.execute)
    end

  end
end