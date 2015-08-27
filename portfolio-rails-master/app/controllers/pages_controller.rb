class PagesController < ApplicationController
	def welcome
	end

	def about
	end

	def portfolio
		@works = Work.all
	end

	def contact
	end
end
