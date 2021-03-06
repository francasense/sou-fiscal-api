class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :neighborhood
      t.string :street
      t.string :cep
      t.references :user, foreign_key: true
      t.references :complaint, foreign_key: true

      t.timestamps
    end
  end
end
