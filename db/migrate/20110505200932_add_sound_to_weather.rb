class AddSoundToWeather < ActiveRecord::Migration
  def self.up
    add_column :weathers, :sound_file_name, :string
    add_column :weathers, :sound_content_type, :string
    add_column :weathers, :sound_file_size, :integer
  end

  def self.down
    remove_column :weathers, :sound_file_size
    remove_column :weathers, :sound_content_type
    remove_column :weathers, :sound_file_name
  end
end
