class Service < ActiveRecord::Base
  belongs_to :user
  belongs_to :service_type
  acts_as_taggable_on :tags
  mount_uploader :image, ServiceImageUploader
  
  validates :name,        length: { minimum: 2 }
  validates :url,         length: { minimum: 3 }
  validates :description, length: { minimum: 20 }
  validates :user_id,         presence: true
  validates :service_type_id, presence: true
  # validates :image, length: { minimum: 3 }

  def self.unique_tags
    Tag.all.uniq
  end
  
  def self.unique_sorted_tags
    Tag.all.uniq.sort
  end

end
