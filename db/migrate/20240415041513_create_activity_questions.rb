class CreateActivityQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :activity_questions do |t|
      t.string :theme
      t.string :statement
      t.string :alternatives

      t.timestamps
    end
  end
end