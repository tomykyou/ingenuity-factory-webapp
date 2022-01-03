class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :occupation, :string
    add_column :users, :image, :string
    add_column :users, :award, :string
  end
end
