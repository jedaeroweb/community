class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :title, limit: 60, null: false
      t.integer :notice_pictures_count, null: false, default: 0
      t.boolean :slide_show, null: false, default: true
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end
