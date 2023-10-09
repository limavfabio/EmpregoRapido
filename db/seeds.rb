require 'faker'

5.times do
  user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    profile_picture: Faker::Avatar.image,
    bio: Faker::Lorem.sentence,
    location: Faker::Address.city,
    twitter: Faker::Internet.user_name,
    github: Faker::Internet.user_name,
    website: Faker::Internet.url,
    confirmed_at: Time.now
  )
  3.times do
    user.job_listings.create(
      title: Faker::Job.title,
      description: Faker::Lorem.paragraph,
      location: Faker::Address.city,
      salary: rand(40000..100000),
      job_type: ['Full-time', 'Part-time', 'Contract'].sample,
      industry: ['Technology', 'Finance', 'Healthcare'].sample,
      created_at: Time.now,
    )
  end
end
