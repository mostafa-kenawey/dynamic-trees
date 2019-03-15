module Trees
  class ParentTreesService < BaseTreesService
    attr_accessor :child_id, :parents

    def initialize(id)
      super
      @child_id = id
    end

    def _execute
      get_parent_trees
    end

    private

    def get_parent_trees
      find_parent
      return_parents
    end

    def find_parent(list=trees_list, current_parents=[])
      if list["id"].to_s == child_id
        @parents = current_parents.clone
      elsif list["child"].any?
        current_parents << list["id"]
        list["child"].each do |child|
          find_parent(child, current_parents)
        end
      end
    end

    def return_parents
      !!@parents ? @parents.reverse : raise("NotFound")
    end

  end
end