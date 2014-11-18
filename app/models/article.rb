class Article < ActiveRecord::Base
  has_many   :tags, :dependent => :destroy, :as => :tag
  accepts_nested_attributes_for :tags
  has_attached_file :image,
                    :styles => lambda { |a|
                      {
                          :thumb => "100x100#",
                          :user_defined => "#{a.instance.width}x#{a.instance.height}#"}
                      },
                    :default_style => :thumb
end
