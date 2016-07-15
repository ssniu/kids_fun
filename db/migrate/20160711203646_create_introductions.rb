class CreateIntroductions < ActiveRecord::Migration
  def change
    create_table :introductions do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
