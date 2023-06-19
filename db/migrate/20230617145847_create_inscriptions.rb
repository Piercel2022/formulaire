class CreateInscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :inscriptions do |t|
      t.string :vorname
      t.string :name
      t.string :age
      t.string :adress
      t.string :email
      t.string :phone
      t.string :gender
      t.timestamps
    end
  end
end
