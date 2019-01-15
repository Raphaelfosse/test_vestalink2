class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :reference_site
      t.string :nom
      t.string :address_line1
      t.string :zipcode
      t.string :city

      t.timestamps
    end
  end
end
