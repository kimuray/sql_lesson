class CreateTowns < ActiveRecord::Migration[6.0]
  def change
    create_table :towns do |t|
      t.string :city_id, null: false
      t.string :zip_code
      t.string :area_name
      t.string :street_name

      t.datetime :created_at, default: -> { 'NOW()' }
      t.datetime :updated_at, default: -> { 'NOW()' }
    end

    add_foreign_key :towns, :cities
    add_index  :towns, :city_id
  end
end
