class Event < ActiveRecord::Base
	belongs_to :user
	has_many :videos, dependent: :destroy
	has_many :images, dependent: :destroy
	has_many :comments, dependent: :destroy

end
