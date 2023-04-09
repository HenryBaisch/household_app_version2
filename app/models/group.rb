class Group < ApplicationRecord
    has_many :users
    has_many :expenses, dependent: :destroy
    has_many :group_members, dependent: :destroy
    has_many :members, through: :group_members, source: :user
end
