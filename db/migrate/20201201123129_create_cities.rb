class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities, id: :string do |t|
      t.references :pref, null: false, foreign_key: true
      t.string :name

      t.datetime :created_at, default: -> { 'NOW()' }
      t.datetime :updated_at, default: -> { 'NOW()' }
    end
  end
end
