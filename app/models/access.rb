class Access < ActiveRecord::Base
	belongs_to :image
	belongs_to :user
	belongs_to :event
	belongs_to :video
end
