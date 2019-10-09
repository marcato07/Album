class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer :AlbumID
      t.string :Title
      t.string :Description
      t.string :Privacy
      t.date :UploadDate
      t.integer :View
      t.string :ImagePath

      t.timestamps
    end
  end
end
