class Subsidy < ApplicationRecord
  has_many :requests

  validates :name, presence: true
  validates :start_date, presence: true
  validates :start_end, presence: true
  validates :amount, presence: true
end
