class CreateAuthenticates < ActiveRecord::Migration
  def change
    create_table :authenticates do |t|
      t.string :sufix
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.string :c_password

      t.timestamps null: false
    end
  end
end
