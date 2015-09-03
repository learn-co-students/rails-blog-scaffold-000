class CreatePostsControllers < ActiveRecord::Migration
  def change
    create_table :posts_controllers do |t|
      t.string :title

      t.timestamps
    end
  end
end
