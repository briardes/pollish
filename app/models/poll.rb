class Poll < ActiveRecord::Base
  has_many :options
  validates :owner, presence: true
  validates :question, presence: true
  validates :choices, presence: true
  validates :choices, numericality: true
end
