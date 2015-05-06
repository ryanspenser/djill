class Image < ActiveRecord::Base
	belongs_to :event
	has_many :picture_comments, dependent: :destroy
	
   def generate_filename
    self.filename = ((0..10).map{rand(256).chr}*"").unpack("H*")[0][0,10] + ".jpg"
    if Image.find_by(filename: self.filename) != nil
      generate_filename
    end
  end
end
