class OnduleurEnergy < ApplicationRecord
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			OnduleurEnergy.create! rox.to_hash
		end
	end
end
