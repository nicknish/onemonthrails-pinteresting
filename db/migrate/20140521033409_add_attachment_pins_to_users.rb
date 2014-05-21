class AddAttachmentPinsToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :pins
    end
  end

  def self.down
    drop_attached_file :users, :pins
  end
end
