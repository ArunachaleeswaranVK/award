class CreateLongestcontinuoussbcs < ActiveRecord::Migration
  def change
    create_table :longestcontinuoussbcs do |t|
      
      t.string :name_of_the_sbc_nominating_self 
      t.text :name_of_the_institution
      t.text :postal_address
      t.string :city
      t.string :pin
      t.string :state
      t.string :phone_number
      t.string :emailID
      t.string :name_of_head_of_institution
      t.string :SBC_designation
      t.string :head_of_institution_emailID
      t.string :SBC_emailID
      t.string :SBC_phone_number
      t.string :Institution_membership_number
      t.date :Institution_membership_valid_till
      t.string :candidate_csi_membership_number
      t.date :candidate_csi_membership_number_valid_till
      t.integer :no_of_csi_voulenteers
      t.integer :no_of_csi_voulenteers_added
      
      t.timestamps null: false
    end
  end
end
