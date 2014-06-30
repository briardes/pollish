class Poll < ActiveRecord::Base

  has_many :options

  # took this code from mae and sebatians code
  accepts_nested_attributes_for :options, allow_destroy: true,
                                reject_if: lambda { |option| option['answer'].blank? }
  validates :owner, presence: true
  validates :question, presence: true
end
