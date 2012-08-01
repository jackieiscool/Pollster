class RemoveDescriptionFromPoll < ActiveRecord::Migration
  def up
    remove_column :polls, :description
  end

  def down
    add_column :polls, :description, :string
  end
end
