class Emp < ApplicationRecord
  attr_accessor :account, :emp_id, :manager_id

  has_many :subordinates, class_name: 'Emp', foreign_key: 'manager_id'

  belongs_to :manager, class_name: 'Emp', optional: true

  def self.accounts
    all.map(&:account)
  end
end
