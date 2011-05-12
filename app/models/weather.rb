class Weather < ActiveRecord::Base
  attr_protected :longitude, :latitude
  
  has_attached_file :sound,  :url => "/assets/:class/:id/:attachment/:style.:extension",
                    :path => ":rails_root/public/assets/:class/:id/:attachment/:style.:extension"

  has_attached_file :image,
                    :styles => {:thumb => ["150x150", :png]},
                    :url => "/assets/:class/:id/:attachment/images/:style.:extension",
                    :path => ":rails_root/public/assets/:class/:id/:attachment/images/:style.:extension"



end
