
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
s1 = Service.create!(name: "Student Psychological Services", image: "Polar-bear-getting-out-of-bed.gif", url: "http://www.ucl.ac.uk/student-psychological-services", description: "The UCL Student Psychological Services provides students who are facing emotional and psychological problems an accessible and effective professional resource.", user_id: u_staff1.id, service_type_id: st_uni.id)

s2 = u_admin1.services.create!(name: "Gower Place Practice", image: "Polar-bear-getting-out-of-bed.gif", url: "http://www.gowerplacepractice.nhs.uk/", description: "We are based on the campus of University college London.

  You can book and cancel appointments, order repeat prescriptions and view a summary of your medical record (including medications, immunisations and allergies). You can also update your personal contact details.

  Anyone living in WC1 can register with the practice.", service_type_id: st_external.id)

s1.tag_list = "mental health"
s1.save
s1.reload!

s2.tag_list = "physical health"
s2.save
s2.reload!
