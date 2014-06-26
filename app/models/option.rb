class Option < ActiveRecord::Base
  belongs_to :poll
  validates :answer, presence: true
  validates :count, presence: true
  validates :count, numericality: true
end
