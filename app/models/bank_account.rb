class BankAccount < ApplicationRecord
  def self.ransackable_associations(*, **) = reflections.keys
  def self.ransackable_attributes(*, **) = attribute_names
end
