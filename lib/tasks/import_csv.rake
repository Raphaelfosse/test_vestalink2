require 'csv'

namespace :import_csv do
  desc "Importing sites from CSV"
  task import_sites: :environment do
    path = Rails.root.join('lib', "sites.csv")

    CSV.foreach(path, :headers => true, encoding: "UTF-8") do |row|
      Site.find_or_create_by(row.to_hash)
    end
  end

  desc "Importing parts from CSV"
  task import_parts: :environment do
    filename = Rails.root.join('lib', "parts.csv")

    CSV.foreach(filename, :headers => true, encoding: "UTF-8") do |row|
      site = Site.find_by(reference_site: row[1])
      part = Part.find_or_initialize_by(reference_part: row[0])
      part.part_type_designation = row[2]
      part.reference_site = row[1]
      part.site = site
      part.save

    end
    puts "Parts added"
  end

end
