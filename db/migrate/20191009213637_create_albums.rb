class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.integer :ID
      t.string :Title
      t.string :Description
      t.integer :View

      t.timestamps
    end
  end
end
