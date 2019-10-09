class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :PhotoID
      t.datetime :Postdate
      t.string :content

      t.timestamps
    end
  end
end
