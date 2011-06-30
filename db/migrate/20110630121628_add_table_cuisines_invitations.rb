class AddTableCuisinesInvitations < ActiveRecord::Migration
def self.up
create_table :cuisines_invitations, :id  => false, :force => true do |t|
t.integer :cuisine_id
t.integer :invitation_id
end
  def self.down
    drop_table :cuisines_invitations
  end
end
end
