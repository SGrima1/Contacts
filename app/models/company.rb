class Company < ApplicationRecord
  has_many :people, dependent: :destroy

  def count_contacts
    people.length
  end
end
