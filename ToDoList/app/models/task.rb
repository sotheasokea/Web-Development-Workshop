class Task < ApplicationRecord
  validates :title, presence: true
  def completed?
    complete
  end
end
