class CreateNotecomments < ActiveRecord::Migration[6.1]
  def change
    create_table :notecomments do |t|
      t.text :comment
      t.integer :future_point
      t.integer :surprisingly_point
      t.integer :realization_point
      t.references :user, foreign_key: true
      t.references :mainnote, foreign_key: true

      t.timestamps
    end
  end
end
