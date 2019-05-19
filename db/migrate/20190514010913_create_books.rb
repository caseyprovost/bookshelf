# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false, index: true
      t.text :summary, null: false
      t.integer :page_count, null: false, default: 0
      t.date :publication_date, index: true, null: true
      t.uuid :publisher_uuid, index: true, null: false
      t.uuid :author_uuid, index: true, null: false

      t.timestamps
    end
  end
end
