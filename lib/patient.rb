class Patient
  attr_reader :name, :appointments, :doctors

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    @appointments = Appointment.all.select {|s| s.patient == self}
  end

  def doctors
    @doctors = self.appointments.map {|s| s.doctor }.uniq
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
  end


  #Class Methods
  def self.all
    @@all
  end
end
