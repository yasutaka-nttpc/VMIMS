class Information < ApplicationRecord
  belongs_to :services, primary_key: "service", foreign_key: "name", class_name: "Service"
  belongs_to :services, primary_key: "group", foreign_key: "name", class_name: "Group"
  belongs_to :services, primary_key: "category", foreign_key: "name", class_name: "Category"
  belongs_to :services, primary_key: "environment", foreign_key: "name", class_name: "Environment"
  
  VALID_EMAIL_REGEX = /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/

  validates :name, :server_name, presence:true
  validates :hard_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not hard_contact_mail.blank? }
  validates :soft_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not soft_contact_mail.blank? }
  validates :sales_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not sales_contact_mail.blank? }
end
