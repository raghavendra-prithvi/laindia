class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.string :category
      t.string :title
      t.text :description
      t.string :keyword
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.float :price

      t.timestamps null: false
    end
  end
end
