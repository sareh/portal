
# Tags
Tag::TAGS.each do |name|
  Tag.create!(name: name)
end

# Service Types
st_student = ServiceType.create!(name: "Student Group", icon: "&#xf1ff;")
st_external = ServiceType.create!(name: "External Organisation", icon: "&#xf1ff;")
st_uni = ServiceType.create!(name: "University", icon: "&#xf1ff;")
st_union = ServiceType.create!(name: "Union", icon: "&#xf1ff;")

# User roles
ROLES = %w(student staff admin)

# Users
u_staff1 = User.create!(email: "profjen@ucl.ac.uk", username: "profjen", password: "password", password_confirmation: "password", role: "staff")
u_student1 = User.create!(email: "z1234@ucl.ac.uk", username: "zaraabdul", password: "password", password_confirmation: "password", role: "student")
u_admin1 = User.create!(email: "test123@ucl.ac.uk", username: "firstadmin", password: "password", password_confirmation: "password", role: "admin")

# Services
s1 = Service.create!(name: "Student Psychological Services", image: "Polar-bear-getting-out-of-bed.gif", url: "http://www.ucl.ac.uk/student-psychological-services", description: "The UCL Student Psychological Services provides students who are facing emotional and psychological problems an accessible and effective professional resource.", user_id: u_staff1.id, service_type_id: st_uni.id)

