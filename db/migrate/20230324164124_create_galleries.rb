class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.references :user, null: false
      t.string :title, null: false, limit: 60
      t.string :location, limit: 255
      t.string :photo, null: false
      t.string :content, null: false, limit: 250
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end
