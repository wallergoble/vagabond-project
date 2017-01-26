class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :description
      t.string :image_url
      t.string :city
      t.string :region
      t.string :country

      t.timestamps
    end
  end
end
