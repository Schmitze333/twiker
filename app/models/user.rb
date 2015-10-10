class User < ActiveRecord::Base

  validates :name, presence: true

  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  validates :password, length: {minimum: 8}

end
