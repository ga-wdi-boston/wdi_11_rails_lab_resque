class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :guestbooks
  after_commit :say_hi


  def say_hi
    EmailWorker.perform(self).deliver # actually sends the email
  end
end
