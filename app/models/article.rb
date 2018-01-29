class Article < ApplicationRecord
	validates :titulo, presence: true, uniqueness: true
	validates :cuerpo, presence: true, length: {minimum:20}

end
