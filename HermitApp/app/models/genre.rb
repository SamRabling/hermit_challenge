class Genre < ApplicationRecord
    has_many :selected, dependent: :destroy
    has_many :user_selected, through: :selected

    validates :name, :description, presence: true, length: {minimum: 2}
end
