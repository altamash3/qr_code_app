class User < ApplicationRecord
  validates :username, presence: true
  has_many :portfolios
  has_many :stocks, through: :portfolios
  after_create :log_new_user

  private
    
  def log_new_user
    puts "A new user was registered"
  end
end
