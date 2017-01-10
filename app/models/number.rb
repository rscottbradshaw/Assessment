class Number < ActiveRecord::Base
  validates :value, presence: true
  validates_inclusion_of :value, :in => 0..10
end
