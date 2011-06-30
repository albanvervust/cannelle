class CreateAmbiances < ActiveRecord::Migration
  def self.up
    create_table :ambiances do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :ambiances
  end
end
