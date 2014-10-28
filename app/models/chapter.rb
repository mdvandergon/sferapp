require 'csv'

class Chapter < ActiveRecord::Base

	has_many :users

  # Validation
  validates :salesforce_id, presence: true, uniqueness: {case_sensitive: false}

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
      salesforce_id = row.to_hash['salesforce_id']
      if Chapter.where(salesforce_id: salesforce_id) != nil
  		  Chapter.create!(row.to_hash)
      end
  	end
  end


end
