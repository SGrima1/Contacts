# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_options = {headers: :first_row }
filepath    = '/home/seb/code/kter/CHANGE_THIS_TO_YOUR_RAILS_APP_NAME/Connections_v1.csv'

Company.destroy_all
Person.destroy_all
CSV.foreach(filepath, csv_options) do |row|
  c = Company.new
  c.name = row["Company"]
  c.save!
  puts "#{c.name} saved"
end

CSV.foreach(filepath, csv_options) do |row|
  s = Person.new
  s.first_name = row["First Name"]
  s.last_namer = row["Last Name"]
  company = Company.find_by(name: row["Company"])
  s.company_id = company.id
  s.save!
  puts "#{s.first_name}, #{s.last_namer} at #{s.company.name} saved"
end