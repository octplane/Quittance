class CreateQuittances < ActiveRecord::Migration
  def change
    create_table :quittances do |t|
      t.references :location, index: true
      t.date :start_date
      t.date :end_date
      t.float :amount
      t.float :common_amount
      t.date :sent_date

      t.timestamps
    end
  end
end
