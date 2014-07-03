class CreateUserInformations < ActiveRecord::Migration
  def change
    create_table :user_informations do |t|
      t.string :address1
      t.string :address2
      t.string :zip
      t.string :city
      t.references :user, index: true

      t.timestamps
    end
  end
end
