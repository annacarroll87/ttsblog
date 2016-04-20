class ChangeBostToPost < ActiveRecord::Migration
  def change
  	rename_column :comments, :blog_bost_id, :blog_post_id
  end
end
