class CreateRegisters < ActiveRecord::Migration[6.0]
  def change
    create_table :registers do |t|
      t.string :firstname
      t.string :lastname
      t.date :date_of_birth
      t.string :marital_status
      t.string :gender

      t.timestamps
    end
  end
end
