class CreateBasicDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :basic_details do |t|
      t.string :email
      t.string :name
      t.string :purpose_of_fundraiser
      t.integer :mobile_number
      t.string :type_of_fundraiser

      t.timestamps
    end
  end
end
