class CreateSpreePages < ActiveRecord::Migration
  def change
    create_table :spree_pages do |t|
      t.string :name
      t.string :meta_keywords
      t.string :meta_description
      t.string :slug
      t.text :description
      t.string :meta_title

      t.timestamps null: false
    end
  end
end
