namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
  
  admin = User.create!(name: "Dean Robbins",
                         email: "dean.robbins@gmail.com",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)




    25.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end