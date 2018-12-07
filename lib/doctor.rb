require "pry"

class Doctor
  attr_reader :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    song = Appointment.new(patient, self, date)
  end

  def appointments
    @appointments = Appointment.all.select {|s| s.doctor == self}
  end

  def patients
    # binding.pry
    @patients = self.appointments.map {|s| s.patient}.uniq
  end

  #Class Methods
  def self.all
    @@all
  end
end
