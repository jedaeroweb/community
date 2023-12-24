class CreateQuestionCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :question_categories do |t|
      t.string :title, null: false
      t.integer :questions_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end
