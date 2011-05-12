class ChangeWeatherTypeToName < ActiveRecord::Migration
  def self.up
    rename_column :weathers, :type, :name
  end

  def self.down
  end
end
