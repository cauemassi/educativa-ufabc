class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :theme
      t.string :difficulty
      t.string :question_quantity
      t.string :question_alternative_quantity
      t.boolean :is_public

      t.timestamps
    end
  end
end
