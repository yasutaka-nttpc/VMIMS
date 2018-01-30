class Category < ApplicationRecord
  has_many :information, primary_key: "name", foreign_key: "category", class_name: "Information"
end
