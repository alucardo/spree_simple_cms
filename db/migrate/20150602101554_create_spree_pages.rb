class CreateSpreePages < ActiveRecord::Migration
  def change
    create_table :spree_pages do |t|
      t.string :title
      t.string :slug
      t.string :meta_keywords
      t.string :meta_description
      t.string :meta_title
      t.text :content

      t.timestamps null: false
    end
  end
end
