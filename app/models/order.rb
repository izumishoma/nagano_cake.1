class Order < ApplicationRecord
  enum payment: {credit:0, bank: 1}
  enum order_status: {wait: 0, check: 1, making: 2, standby: 3, sent:4}

  belongs_to :customer
  has_many :order_details, dependent: :destroy

  validates :shipping_cost, presence: true
end
