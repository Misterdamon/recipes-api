module ApplicationHelper
	def self.serialize_input(terms)
		result = terms.downcase.gsub(" ", "+")
		result
	end
end
