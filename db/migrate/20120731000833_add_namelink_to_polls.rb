class AddNamelinkToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :namelink, :string
  end
end
