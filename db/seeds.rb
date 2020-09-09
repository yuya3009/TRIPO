User.create!(name:  "example user",
             email: "mint@railstutorial.com",
             password:              "foobar20",
             password_confirmation: "foobar20",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "mint-#{n+1}@railstutorial.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end