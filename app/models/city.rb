class City < ApplicationRecord
  belongs_to :pref
  has_many :towns
end
