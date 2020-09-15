class Task < ApplicationRecord
  belongs_to :user
  attachment :image_id
end
