class Request < ApplicationRecord
  belongs_to :subsidy

  validates :email, presence: true
  validates :receipt, presence: true
  # validates :amount, inclusion: { in: (0..@subsidy.amount) }
  mount_uploader :receipt, ReceiptUploader
end
