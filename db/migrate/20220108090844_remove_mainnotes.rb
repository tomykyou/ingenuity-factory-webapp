class RemoveMainnotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :notecomments, :future_point, :integer
    remove_column :notecomments, :surprisingly_point, :integer
    remove_column :notecomments, :realization_point, :integer    
  end
end
