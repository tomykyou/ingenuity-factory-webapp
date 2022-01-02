class CreateMainnotes < ActiveRecord::Migration[6.1]
  def change
    create_table :mainnotes do |t|
      t.string :title
      t.text :text
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :target
      t.string :category
      t.string :thingstoprepare
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
