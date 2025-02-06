require_relative '../inheritance'

RSpec.describe Person do 
  describe '#initialize' do
    it 'returns the persons name and age' do
      person = Person.new("damen", 25)
      expect(person.name).to eq("damen")
      expect(person.age).to eq(25)
    end
  end    
end

RSpec.describe Person do
  describe '#initialize' do
    it 'returns the persons name age grade and school'do
      student = Student.new("damen", 25, 9, "JFK")
      expect(student.name).to eq("damen")
      expect(student.age).to eq(25)
      expect(student.grade).to eq(9)
      expect(student.school).to eq("JFK")
    end
  end
end  