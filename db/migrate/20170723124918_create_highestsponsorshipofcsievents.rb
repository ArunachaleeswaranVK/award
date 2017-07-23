class CreateHighestsponsorshipofcsievents < ActiveRecord::Migration
  def change
    create_table :highestsponsorshipofcsievents do |t|
      t.integer :institution_membership_no 
      t.date :validity
      t.text :name_of_the_institution
      t.text :postal_address
      t.string :city
      t.string :pin
      t.string :state
      t.string :phone_number
      t.string :emailID
      t.string :SBC_name
      t.string :SBC_designation
      t.string :SBC_department
      t.string :SBC_emailID
      t.string :SBC_phone_number
      t.date :Institution_membership_joining_date
      t.date :Institution_membership_valid_till
      t.integer :no_of_csi_voulenteers
      t.integer :no_of_csi_voulenteers_added
      
      t.timestamps null: false
    end
  end
end
