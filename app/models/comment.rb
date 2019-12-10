class Comment < ApplicationRecord
  has_many :discussions
  validates :commentary, presence: true,
                         length: { minimum: 20 }
end
