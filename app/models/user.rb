class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :review
  has_many :orders
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
  before_save :check_role

  before_save :skip_email
  def skip_email
    self.skip_confirmation!
  end

  def check_role
    if !self.role
      self.role = 0
    end
  end

end
