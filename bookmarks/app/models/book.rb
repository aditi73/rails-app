class Book < ActiveRecord::Base
	has_many :review
end
