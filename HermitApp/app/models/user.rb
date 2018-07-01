class User < ApplicationRecord
  acts_as_token_authenticatable
  has_many :selected, dependent: :destroy
  has_many :genre_selected, through: :selected

  before_validation :email_lowercase
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :name, presence: true, length: {minimum: 2}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
  validates :password, presence: true, length: {minimum: 8}, confirmation: true

  private
    def email_lowercase
      self.email.downcase!
    end
end
