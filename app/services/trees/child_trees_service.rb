module Trees
  class ChildTreesService < BaseTreesService
    attr_accessor :parent_id, :childs

    def initialize(id)
      super
      @parent_id = id
    end

    def _execute
      get_child_trees
    end

    private

    def get_child_trees
      find_child
      return_childs
    end

    def find_child(list=trees_list)
      if list["id"].to_s == parent_id
        # @childs = list["child"] # this to return the full list of childs
        @childs = list["child"].collect{|t| t["id"]} # this to return the list of child IDs
      elsif list["child"].any?
        list["child"].each do |child|
          find_child(child)
        end
      end
    end

    def return_childs
      !!@childs ? childs : raise("NotFound")
    end

  end
end