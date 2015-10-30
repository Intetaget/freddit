class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password, null: false
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
