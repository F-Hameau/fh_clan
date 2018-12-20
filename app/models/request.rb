class Request < ApplicationRecord
  belongs_to :subsidy

  mount_uploader :receipt, ReceiptUploader
end
