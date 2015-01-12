class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.string :secondname
      t.string :surname
      t.string :phone

      t.timestamps
    end
  end
end