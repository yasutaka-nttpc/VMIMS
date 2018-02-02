class Information < ApplicationRecord
  VALID_PHONE_REGEX = /\A(\d|-){10,11}\z/
  VALID_EMAIL_REGEX = /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/

  validates :name, :server_name, presence:true
  validates :hard_contact_tel, format: { with: VALID_PHONE_REGEX }, if: -> { not hard_contact_tel.blank? }
  validates :soft_contact_tel, format: { with: VALID_PHONE_REGEX }, if: -> { not soft_contact_tel.blank? }
  validates :sales_contact_tel, format: { with: VALID_PHONE_REGEX }, if: -> { not sales_contact_tel.blank? }
  validates :hard_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not hard_contact_mail.blank? }
  validates :soft_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not soft_contact_mail.blank? }
  validates :sales_contact_mail, format: { with: VALID_EMAIL_REGEX }, if: -> { not sales_contact_mail.blank? }
end
