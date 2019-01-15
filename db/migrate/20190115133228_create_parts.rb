class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :reference_part
      t.string :reference_site
      t.string :part_type_designation
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
