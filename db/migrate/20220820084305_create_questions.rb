class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :question_category, null: false
      t.references :user, null: false
      t.references :program_language, null: false
      t.references :program_category
      t.string :title, null: false, limit: 60
      t.integer :question_comments_count, null: false, default: 0
      t.integer :question_pictures_count, null: false, default: 0
      t.integer :answers_count, null: false, default: 0
      t.integer :count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end

    create_table :question_comments do |t|
      t.references :question, null: false
      t.references :user
      t.text :content, null: false
      t.timestamps null: false
    end
  end
end
