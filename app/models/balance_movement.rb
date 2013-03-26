class BalanceMovement < ActiveRecord::Base
  attr_accessible :document_id, :document_type_id, :movement_date, :value
end
