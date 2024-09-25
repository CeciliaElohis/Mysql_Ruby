class Estudiante < ApplicationRecord
 
  validates :nombres, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "solo debe contener letras" }
  validates :apellidos, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "solo debe contener letras" }
  validates :carrera, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "solo debe contener letras" }
  validates :nombres, length: { maximum: 15 }, on: :create
  validates :apellidos, length: { maximum: 15 },on: :create
  validates :carrera, length: { maximum: 15 },on: :create
  validates :carnet, presence: true, format: { with: /\A[\d-]+\z/, message: "solo debe contener números y guiones" }
  validates_uniqueness_of :carnet

  
end
