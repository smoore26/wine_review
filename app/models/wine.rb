class Wine < ActiveRecord::Base
VARIETALS = [ 'Restylane', 'Zinfindel', 'Merlot', 'Pinot Nior', 'Boreduex', 'Chianti' ]

validates :name, :year, :country, :varietal, presence: true

    validates :varietal, :inclusion => { :in => VARIETALS }
    validates :year, numericality: { only_integer: true }

    has_many :log_entries, dependent: :destroy

    def average_rating
     log_entries.average(:rating)
    end

end