class Doctor
  attr_accessor :name #has a name
  @@all = []
  
  def initialize (name) #initializes with a name and adds itself to an array of all doctors
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def new_appointment (patient, date) #given a date and patient, creates a new appointment
    Appointment.new(patient, self, date)
  end
  
  def appointments #returns all appointments associated with this Doctor
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients #has many patients, through appointments
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
  
end