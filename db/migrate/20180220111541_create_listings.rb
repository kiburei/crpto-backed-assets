class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.float :equity, default: 100

      t.timestamps
    end
  end
end
