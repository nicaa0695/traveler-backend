class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :country
      t.string :image
      t.boolean :visited, default: false
      t.boolean :bucket_list, default: false
    end
  end
end
