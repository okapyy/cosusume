class Personal < ApplicationRecord
  belongs_to :user, optional: true

  validates :age, :skin_color, :skin_condition, presence: true
end
