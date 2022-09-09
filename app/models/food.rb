class Food < ApplicationRecord
    validates_presence_of :name, :brand, :code, :ingredients
end