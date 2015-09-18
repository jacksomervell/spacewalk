class User < ActiveRecord::Base

  has_many :sessions
  has_many :facts, through: :sessions

  # def self.search(search)
  #   where("name LIKE ?", "%#{search}%") 
  #   where("location LIKE ?", "%#{search}%")

  # end

  def self.search(search)
      where('name LIKE ?', "%#{search}%")
  end
end