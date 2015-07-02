class Skill < ActiveRecord::Base
  has_and_belongs_to_many :projects

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
end
