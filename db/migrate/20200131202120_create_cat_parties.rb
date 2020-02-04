class CreateCatParties < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_parties do |t|
      t.references :cat, null: false, foreign_key: true
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
