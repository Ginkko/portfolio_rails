class Comment < ActiveRecord::Base
belongs_to :user
belongs_to :post

validates :description, presence: true
validates :description, uniqueness: true
end
