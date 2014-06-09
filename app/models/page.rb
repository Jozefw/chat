class Page < ActiveRecord::Base
validates :post, length:{in: 2..200}, presence: true
validates :comment, length:{maximum: 200}, allow_nil: true

validates :user_id, presence: true
belongs_to :user

paginates_per 5
end
