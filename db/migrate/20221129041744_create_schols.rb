class CreateSchols < ActiveRecord::Migration[6.0]
  def change
    create_table :schols do |t|
      t.string :name
      t.integer :age
      t.integer :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
