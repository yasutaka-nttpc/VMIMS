class Service < ApplicationRecord
  has_many :information, primary_key: "name", foreign_key: "service", class_name: "Information"
end
