class FoundingSource < ApplicationRecord
  belongs_to :account, dependent: :destroy
  attr_accessor :nature
end
