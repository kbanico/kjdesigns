class Email < ApplicationRecord
  validates :name, presence: true, length: {maximum: 100, minimum:3}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum:105},
  #uniqueness: {case_sensitive: false},
  format: {with: VALID_EMAIL_REGEX}
  validates :message, presence: true, length: {maximum: 500, minimum: 10}
  #validates :number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Invalid Number" }



end

