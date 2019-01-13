class Doctor
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(date, patient)
    Appoinment.new(date, patient, self)
  end
  
  def appointments
    Appoinment.all.select {|appointments|
    appointments.doctor}
  end
      
  
end