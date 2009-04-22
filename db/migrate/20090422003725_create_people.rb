class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name_last
      t.string :name_first
      t.string :name_middle
      t.string :phone_mobile
      t.string :phone_home
      t.string :email_address_personal
      t.string :email_address_office
      t.string :professional_title
      t.timestamp :created_on
      t.timestamp :updated_on

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
