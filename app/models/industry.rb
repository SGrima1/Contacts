class Industry < ApplicationRecord
  has_many :companies, dependent: :destroy
end
