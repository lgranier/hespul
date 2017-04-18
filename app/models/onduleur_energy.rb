class OnduleurEnergy < ApplicationRecord
	require 'csv'
	require 'ransack'

	def self.import(file)
		puts file.path
		CSV.foreach(file.path, {:headers => true, :col_sep => ","}) do |row|
			#identifier, datetime, energy = row
			#puts "#{identifier}, #{datetime}, #{energy}"
			if (row["identifier"] != nil)
				onduleurEnergy = OnduleurEnergy.create(onduleur_id: row["identifier"], date: row["datetime"], energy: row["energy"])
			end		
			#counter += 1 if onduleurEnergy.persisted?

		end
		#puts "#{counter} lignes importées"
	end
end
