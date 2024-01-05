# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :username, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }

  before_save :downcase_email, if: :email_changed?

  private

  def downcase_email
    self.email = email.downcase
  end
end
