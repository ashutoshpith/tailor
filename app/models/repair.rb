class Repair < ApplicationRecord
  belongs_to :model
  belongs_to :problem
end
