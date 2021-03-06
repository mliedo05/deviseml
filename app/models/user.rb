class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :stories, dependent: :destroy
  validates :name, presence: true
  enum role:[:user, :admin]
  def to_s
    name
  end

  

end
