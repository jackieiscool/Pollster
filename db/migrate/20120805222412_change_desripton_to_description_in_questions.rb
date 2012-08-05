class ChangeDesriptonToDescriptionInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :desripton, :description

  end
end
