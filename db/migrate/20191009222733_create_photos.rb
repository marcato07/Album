class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :privacy
      t.date :uploadDate
      t.integer :view
      t.string :imagePath

      t.timestamps
    end
  end
end
