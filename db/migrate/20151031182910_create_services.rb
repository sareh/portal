class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :image
      t.text :url
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.references :service_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
