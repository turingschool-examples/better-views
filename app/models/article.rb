class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	belongs_to :author

	scope :current, -> { where(current: true) }
	scope :retired, -> { where(current: false) }
end
