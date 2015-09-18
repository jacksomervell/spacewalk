class User < ActiveRecord::Base
  has_many :sessions
  has_many :facts, through: :sessions
end