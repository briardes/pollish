class Option < ActiveRecord::Base
  belongs_to :poll
  validates :answer, presence: true
  validates :count, presence: true
  validates :count, numericality: true

  def add_vote!
    self.count = self.count + 1
    save
  end

end
