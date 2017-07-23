class AlterPhotosChangeImageType < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :image
    add_column :photos, :image, :string
  end
end
