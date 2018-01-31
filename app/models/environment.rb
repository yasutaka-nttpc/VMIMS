class Environment < ApplicationRecord
  has_many :information, primary_key: "name", foreign_key: "environment", class_name: "Information"
  
  validates :name, presence:true
end
