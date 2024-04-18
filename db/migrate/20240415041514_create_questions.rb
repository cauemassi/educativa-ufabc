class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :theme
      t.string :statement
      t.string :alternatives
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
