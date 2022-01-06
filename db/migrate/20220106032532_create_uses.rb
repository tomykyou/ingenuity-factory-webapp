class CreateUses < ActiveRecord::Migration[6.1]
  def change
    create_table :uses do |t|
      t.references :mainnote, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
