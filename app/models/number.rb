class Number < ActiveRecord::Base
  validates :value, presence: true
  validates_inclusion_of :value, :in => 1..10
end
