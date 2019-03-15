module Trees
  class BaseTreesService < ::BaseService
    attr_accessor :cache

    def initialize(*args)
      @cache = ACTIVESUPPORT_CACHE
    end

    protected

    def trees_list
      cache.read(:trees_list)
    end

    def trees_list?
      !!trees_list
    end

  end
end