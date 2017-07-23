class CreateFacmaxpublishings < ActiveRecord::Migration
  def change
    create_table :facmaxpublishings do |t|
      
      t.string :name_of_faculty
      t.text :name_of_the_institution
      t.text :postal_address
      t.string :city
      t.string :pin
      t.string :state
      t.string :phone_number
      t.string :emailID
      t.string :name_of_head_of_institution
      t.string :designation
      t.string :head_of_institution_emailID
      t.string :candidate_emailID
      t.string :Institution_membership_number
      t.date :Institution_membership_valid_till
      t.string :candidate_csi_membership_number
      t.date :candidate_csi_membership_number_valid_till
      t.boolean :institution_has_student_branch
      
      t.timestamps null: false
    end
  end
end
