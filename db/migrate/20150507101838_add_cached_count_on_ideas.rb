class AddCachedCountOnIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :cached_votes_up, :integer, :default => 0
  end
end
