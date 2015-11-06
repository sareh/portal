Service.destroy_all
User.destroy_all
ServiceType.destroy_all
Tag.destroy_all

# Tags
Tag::TAGS.each do |name|
  Tag.create!(name: name)
end

# Service Types
st_student = ServiceType.create!(name: "Student Group", icon: "fi-torsos-all-female")
st_external = ServiceType.create!(name: "External Organisation", icon: "fi-torsos-all-female")
st_uni = ServiceType.create!(name: "University", icon: "fi-projection-screen")
st_union = ServiceType.create!(name: "Union", icon: "fi-underline")

# User roles
ROLES = %w(student staff admin)

# Users
u_staff1 = User.create!(email: "profjen@ucl.ac.uk", username: "profjen", password: "password", password_confirmation: "password", role: "staff")
u_student1 = User.create!(email: "z1234@ucl.ac.uk", username: "zaraabdul", password: "password", password_confirmation: "password", role: "student")
u_admin1 = User.create!(email: "portal-admin-1@ucl.ac.uk", username: "firstadmin", password: "password", password_confirmation: "password", role: "admin")

# Services
s1 = Service.create!(name: "Student Psychological Services", image: File.open(File.join(Rails.root, '/app/assets/images/ucl-student-psychological-services.png')), url: "http://www.ucl.ac.uk/student-psychological-services", description: "The UCL Student Psychological Services provides students who are facing emotional and psychological problems an accessible and effective professional resource.", user_id: u_staff1.id, service_type_id: st_uni.id)

s2 = u_admin1.services.create!(name: "Gower Place Practice", image: File.open(File.join(Rails.root, '/app/assets/images/gowerplacepractice.png')), url: "http://www.gowerplacepractice.nhs.uk/", description: "We are the local GP (General Practitioners). We are based on the campus of University college London.

  You can book and cancel appointments, order repeat prescriptions and view a summary of your medical record (including medications, immunisations and allergies). You can also update your personal contact details.

  Anyone living in WC1 can register with the practice.", service_type_id: st_external.id)

s1.tag_list = "mental health"
s1.save

s2.tag_list = "physical health"
s2.save

s3 = Service.create!(name: "UoL Housing", image: File.open(File.join(Rails.root, '/app/assets/images/uol-housing-services.gif')), url: "http://housing.london.ac.uk/", description: "The ULHS offers a range of services to assist and support students at contributing colleges who are looking for and living in private accommodation in London.", user_id: u_staff1.id, service_type_id: st_uni.id)

s3.tag_list = "housing"
s3.save

s4 = Service.create!(name: "Crisis", image: File.open(File.join(Rails.root, '/app/assets/images/crisis.png')), url: "http://www.crisis.org.uk/", description: "Crisis is the national charity for single homeless people.", user_id: u_staff1.id, service_type_id: st_external.id)

s4.tag_list = "housing"
s4.save

