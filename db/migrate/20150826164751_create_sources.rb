class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :link
      t.text :description
      t.string :category
      t.string :tags

      t.timestamps null: false
    end
  end
end
