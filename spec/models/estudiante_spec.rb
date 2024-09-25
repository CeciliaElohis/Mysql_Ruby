require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  context "nombres" do
    it { should validate_presence_of :nombres }
    it { should validate_length_of(:nombres).is_at_most(15) }
    it { should_not allow_value("123123").for(:nombres) }
    it { should allow_value("abcd").for(:nombres) }
    end 
  context "apellidos" do
    it { should validate_presence_of :apellidos}
    it { should validate_length_of(:apellidos).is_at_most(15) }
    it { should_not allow_value("123123").for(:apellidos) }
    it { should allow_value("abcd").for(:apellidos) }
    end 
  context "carrera" do
    it { should validate_presence_of :carrera }
    it { should validate_length_of(:carrera).is_at_most(15) }
    it { should_not allow_value("123123").for(:carrera) }
    it { should allow_value("abcd").for(:carrera) }
    end 
  context "carnet" do
    it { should validate_presence_of(:carnet) }
    it { should_not allow_value("abcd").for(:carnet) }
    it { should_not allow_value("123abc").for(:carnet) }
    it { should allow_value("123-45").for(:carnet) }
    it { should allow_value("123-456-789").for(:carnet) } 
    it { should allow_value("123123").for(:carnet) }
    end 
   
end
