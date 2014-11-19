class Tag < ActiveRecord::Base
  belongs_to :article

  validates :name, :presence => true, allow_blank: false
end
