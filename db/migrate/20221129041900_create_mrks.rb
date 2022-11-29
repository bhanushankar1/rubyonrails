class CreateMrks < ActiveRecord::Migration[6.0]
  def change
    create_table :mrks do |t|
      t.integer :m1
      t.integer :m2
      t.integer :m3
      t.integer :m4
      t.integer :m5
      t.integer :total
      t.integer :percent
      t.integer :rank
      t.references :schol, null: false, foreign_key: true

      t.timestamps
    end
  end
end
