class CreateTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :talks do |t|
      t.references :user, null: false
      t.string :title, null: false, limit: 60
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end

    create_table :talk_comments do |t|
      t.references :talk, null: false
      t.references :user
      t.text :content, null: false
      t.timestamps null: false
    end
  end
end
