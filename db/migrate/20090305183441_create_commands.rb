class CreateCommands < ActiveRecord::Migration
  def self.up
    create_table :commands do |t|
      t.string :type, :permalink, :name
      t.text :options, :script
      t.timestamps
    end
  end

  def self.down
    drop_table :commands
  end
end
