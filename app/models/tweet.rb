class Tweet < ApplicationRecord
  has_one_attached :image

  validates :sweet, presence: true, inclusion: { in: [1, 2, 3] }
end
 