class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :chapter
  
  # CHAPTERS = ['Minneapolis', 'New York']
  validates :salesforce_id, presence: true

  
end