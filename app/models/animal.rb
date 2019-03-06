class Animal < ApplicationRecord
  belongs_to :zona
  belongs_to :user

  mount_uploader :foto, FotoUploader

  # User avatar validation

  validates_integrity_of :foto
  validates_processing_of :foto
  validates :foto, file_size: { less_than: 1.megabytes }

end
