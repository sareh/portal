class Service < ActiveRecord::Base
  belongs_to :user
  belongs_to :service_type
  acts_as_taggable_on :tags
end
