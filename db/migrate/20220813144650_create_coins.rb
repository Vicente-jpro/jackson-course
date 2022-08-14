class CreateCoins < ActiveRecord::Migration[7.0]
  def change
    create_table :coins do |t|
      t.string :description
      t.string :acronym
      t.references :mining_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
