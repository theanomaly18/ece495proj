class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :title
      t.string :address
      t.string :image_url
      t.float :latitude
      t.float :longitude
      t.text :description

      t.timestamps
    end
  end
end
