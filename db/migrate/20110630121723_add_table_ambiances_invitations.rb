class AddTableAmbiancesInvitations < ActiveRecord::Migration
def self.up
create_table :ambiances_invitations, :id  => false, :force => true do |t|
t.integer :ambiance_id
t.integer :invitation_id
end

  def self.down
    drop_table :ambiances_invitations
  end
end
end
