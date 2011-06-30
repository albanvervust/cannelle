class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.string :name
      t.datetime :date
      t.string :description
      t.integer :convives
      t.integer :price
      t.string :tag
      t.integer :note
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
