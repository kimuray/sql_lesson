class CreatePrefs < ActiveRecord::Migration[6.0]
  def change
    create_table :prefs do |t|
      t.string :name

      t.datetime :created_at, default: -> { 'NOW()' }
      t.datetime :updated_at, default: -> { 'NOW()' }
    end
  end
end
