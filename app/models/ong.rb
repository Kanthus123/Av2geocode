class Ong < ApplicationRecord
  geocoded_by :endereco
  after_validation :geocode

end
