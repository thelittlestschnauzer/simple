class Appointment < ApplicationRecord
  has_many :appointment_categories
  has_many :categories, through: :appointment_categories 
end
