class Information < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/

  validates :name, :server_name, presence:true
  validates :hard_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not hard_contact_mail.blank? }
  validates :soft_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not soft_contact_mail.blank? }
  validates :sales_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not sales_contact_mail.blank? }
end
