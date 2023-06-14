class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :role, dependent: :destroy
  has_many :experiences, dependent: :destroy
  has_many :companies, through: :experiences

  has_many :base_tags, through: :experiences

  has_many :chatrooms, ->(user) { unscope(where: :user_id).where("chatrooms.user_a_id = :id OR chatrooms.user_b_id = :id", id: user.id) }, class_name: 'Chatroom', dependent: :destroy

  has_one_attached :photo
  has_one :company, through: :role

  include PgSearch::Model

  pg_search_scope :search_by_first_name_and_last_name_and_skills,
  against: [ :first_name, :last_name ],
  associated_against: {
    base_tags: [:name]
  },
  using: {
    tsearch: { prefix: true }
  }


  def chatroom_with(another_user)
    Chatroom.where(user_a: self, user_b: another_user).or(Chatroom.where(user_b: self, user_a: another_user)).first
  end


end
