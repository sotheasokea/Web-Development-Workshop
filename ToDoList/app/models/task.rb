class Task < ApplicationRecord
  validates :title, presence: true
  scope :pending, -> { where(complete: [false, nil]) }
  scope :completed, -> { where(complete: true) }
  def completed?
    complete
  end
end
