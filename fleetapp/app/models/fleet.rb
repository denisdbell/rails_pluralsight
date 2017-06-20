class Fleet < ApplicationRecord
    has_and_belongs_to_many:vehicles
end
