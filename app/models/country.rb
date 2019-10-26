class Country < ApplicationRecord
  self.table_name = 'country'
  has_many :cities, foreign_key: 'countrycode'
  has_many :languages, foreign_key: 'countrycode'

end
