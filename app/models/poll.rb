class Poll < ActiveRecord::Base

  has_many :options
  accepts_nested_attributes_for :options, reject_if: lambda { |option| option['answer'].blank? }



  validates :owner, presence: true
  validates :question, presence: true
  validates :choices, presence: true
  validates :choices, numericality: true
end
