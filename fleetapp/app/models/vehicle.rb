class Vehicle < ApplicationRecord
        has_and_belongs_to_many:fleets
        has_and_belongs_to_many:drivers
end