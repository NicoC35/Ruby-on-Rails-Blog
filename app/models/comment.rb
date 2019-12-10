class Comment < ApplicationRecord
  has_many :discussions, dependent: :delete_all
  validates :commentary, presence: true,
                         length: { minimum: 20 }
end
