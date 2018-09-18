class Paise < ApplicationRecord
	validates :pais_nombre,  :presence => {:message => "no debe ser vacio o nulo"}, :uniqueness => {:message => "el valor %{value} ya existe"}
	validates :pais_code, :presence  => {:message => "no debe ser vacio o nulo"},:uniqueness => {:message => "el valor %{value} ya existe"}, length: {is: 3 }
end
