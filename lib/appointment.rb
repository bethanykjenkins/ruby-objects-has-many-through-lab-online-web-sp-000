class Appointment
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(date, patient, doctor) #initializes with a date, patient, and doctor
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all #knows about all appointments that have been created
    @@all
  end

  
end