class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def doctor_name=(name)
    self.doctor = Doctor.find_or_create_by(name: name)
  end

  def doctor_name
    doctor&.name
  end

  def patient_name=(name)
    self.patient = Patient.find_or_create_by(name: name)
  end

  def patient_name
    patient&.name
  end
end
