class Estado < ApplicationRecord
  belongs_to :paise
  validates :est_nombre, :presence => { :message=> "no puede vacio o nulo"},  :length => { :minimum  =>4, :message=> "el minimi de caracteres es 4"}
  validates :paise_id, :presence => { :message=> "no puede vacio o nulo"}
  validates_associated :paise, {:message => "el pais indicado no existe "}


end
