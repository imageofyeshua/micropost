# Create a main user.
User.create!(name: "Daniel Park",
  email: "daniel@park.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf")

# Generate a bunch of additional users.
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@kainos.org"
  password = "asdfasdf"
  User.create!(name: name,
    email: email,
    password: password,
    password_confirmation: password)
end
