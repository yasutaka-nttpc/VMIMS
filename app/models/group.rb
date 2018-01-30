class Group < ApplicationRecord
  has_many: :information, primary_key: "name", foreign_key: "group", class_name: "Information"
end
