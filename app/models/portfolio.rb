class Portfolio < ApplicationRecord

	validates_presence_of :title, :body

	def self.yes
		where(subtitle: 'Yes')
	end

	scope :subtitle_no, -> { where(subtitle: 'No') }

end

