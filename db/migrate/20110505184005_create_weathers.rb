class CreateWeathers < ActiveRecord::Migration
  def self.up
    create_table :weathers do |t|
      t.string :type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end

  def self.down
    drop_table :weathers
  end
end
