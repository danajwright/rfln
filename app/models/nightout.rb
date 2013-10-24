class Nightout < ActiveRecord::Base
  attr_accessible :headline, :description, :total_amount, :receipt

  # You will need to use attr_accessible if you are
  # using Rails config setting `whitelist_attributes = true`
  # This method associates the attribute ":receipt" with a file attachment

  has_attached_file :receipt

  validates :total_amount, presence: :true
  validates :receipt, presence: :true

end