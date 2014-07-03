class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :zip
      t.string :city
      t.string :tenant_firstname
      t.string :tenant_lastname
      t.date :tenant_since
      t.references :user, index: true
      t.string :tenant_email

      t.timestamps
    end
  end
end
