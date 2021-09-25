class Post < ApplicationRecord
  belongs_to :user
  validates :body, presence: true

  def print_author
    user.name
  end
end
