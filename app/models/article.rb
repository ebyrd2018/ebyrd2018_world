class Article < ApplicationRecord
    belongs_to :category

    # Validations
    validates_presence_of :title
    validates_presence_of :content

    #scopes
    scope :active, 			 -> { where('active = ?', true) }
    scope :alphabetical, -> { order('name') }

end
