class Comment < ApplicationRecord
  validates :commentary, presence: true,
                         length: { minimum: 20 }
end
