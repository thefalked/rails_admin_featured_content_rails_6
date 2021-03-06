class CreateFeaturedContents < ActiveRecord::Migration[6.0]
  def change
    create_table :featured_contents do |t|
      t.string :title
      t.text :content
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end
