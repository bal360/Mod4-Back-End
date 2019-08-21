class AddNameToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :itself, :string
    add_column :favorites, :cfs, :string
    add_column :favorites, :height, :string
    add_column :favorites, :status, :string
    add_column :favorites, :gaugeLocation, :string
    add_column :favorites, :dateTime, :string
  end
end
