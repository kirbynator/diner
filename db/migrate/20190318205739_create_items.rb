class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.belongs_to :menu, foreign_key: true
      t.string :info

      t.timestamps
    end
  end
end
