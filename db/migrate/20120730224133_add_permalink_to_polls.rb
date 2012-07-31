class AddPermalinkToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :permalink, :string
  end
end
