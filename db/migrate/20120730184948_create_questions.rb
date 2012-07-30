class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :desripton
      t.integer :poll_id

      t.timestamps
    end
  end
end
