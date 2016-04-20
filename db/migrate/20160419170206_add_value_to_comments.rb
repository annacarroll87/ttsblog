class AddValueToComments < ActiveRecord::Migration
  def change
    add_column :comments, :blog_bost_id, :integer
  end
end
