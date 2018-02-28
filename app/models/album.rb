class Album < ApplicationRecord
  validates :title, presence: true
  belongs_to :artist
  belongs_to :record_label
end
