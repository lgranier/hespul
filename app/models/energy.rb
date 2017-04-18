class Energy < ApplicationRecord
	belongs_to :onduleur
	require 'csv'
	require 'ransack'

	after_create do 
		puts "Debut after_create"
		p self.onduleur_id
		p self.date.to_date
		if (Day.where(:onduleur_id => self.onduleur_id, :date => self.date.to_date).exists?)
			puts "then after_create 1"
			day = Day.where(:onduleur_id => self.onduleur_id, :date => self.date.to_date).first
			puts "then after_create 2"
			#day.energie =  day.energie + self.energie
			day.increment(:energie, self.energie)
			puts "then after_create 3"
			day.save
			puts "then after_create 4"
		else 
			puts "else after_create"
			Day.create(:onduleur_id => self.onduleur_id, :date => self.date.to_date, energie: self.energie)
		end

	end 

	def self.import(file)
		puts file.path
		CSV.foreach(file.path, {:headers => true, :col_sep => ","}) do |row|
			#identifier, datetime, energy = row
			#puts "#{identifier}, #{datetime}, #{energy}"
			if (row["identifier"] != nil)
				if Energy.where(:onduleur_id => row["identifier"], :date => DateTime.strptime(row["datetime"],"%d/%m/%y %H:%M")).exists? 
					puts "Enregistrement déjà existant"
				else 
					puts "On insère en base"
					energy = Energy.create(onduleur_id: row["identifier"], date: DateTime.strptime(row["datetime"],"%d/%m/%y %H:%M"), energie: row["energy"])
				end 
			end		
			#counter += 1 if onduleurEnergy.persisted?

		end
		#puts "#{counter} lignes importées"
	end
end
