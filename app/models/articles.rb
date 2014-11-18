class Articles < ActiveRecord::Base
  has_attached_file :image,
                    :styles => lambda { |a|
                      {
                          :thumb => "100x100#",
                          :user_defined => "#{a.instance.width}x#{a.instance.height}#"}
                      },
                    :default_style => :thumb
end
