class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.string :address
      t.string :city
      t.string :category

      t.timestamps
    end
  end
end
