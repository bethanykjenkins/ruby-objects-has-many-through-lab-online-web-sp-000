class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name) #initializes with a name
    @name = name
    @@all << self
  end
  
  def self.all #knows about all patients
    @@all
  end
  
  def appointments#returns all appointments associated with this patient
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def new_appointment (doctor, date) #given a date and doctor, creates a new appointment belonging to that patient
    Appointment.new(doctor, self, date)
  end
  
  def doctors 
    @appointments.map do |appointment|
      appointment.doctor
    end
  end
  
end

