# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require 'open-uri'
require 'nokogiri'

# Delete existing records
Experience.delete_all
Role.delete_all
Company.delete_all
User.delete_all

url = 'https://unsplash.com/fr/s/photos/people-suit'
html = URI.open(url)
doc = Nokogiri::HTML(html)

photo_urls = doc.css('.tB6UZ.a5VGX').map { |img| img['src'] }

# url_linkedin = 'https://www.linkedin.com/jobs/search/?currentJobId=3628858218&f_TPR=r604800&geoId=105015875'
# html = URI.open(url_linkedin)
# doc = Nokogiri::HTML(html)

# p icon_urls = doc.css('.evi-image.ember-view').map { |img| img['src'] }
# p icon_urls.each do |url|
#   puts "\"#{url}\""
# end

# url_people = ["https://images.unsplash.com/photo-1685037042785-4767a32f00a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1685037042785-4767a32f00a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1685037042785-4767a32f00a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1685037042785-4767a32f00a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1685037042785-4767a32f00a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1685037042785-4767a32f00a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1685037042785-4767a32f00a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1685037042785-4767a32f00a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80"]


# job_title = ["Data Engineer",
#   "Software Developer",
#   "UX/UI Designer",
#   "Project Manager",
#   "Data Analyst",
#   "Full Stack Developer",
#   "Business Analyst",
#   "Product Manager",
#   "Network Administrator",
#   "Marketing Manager",
#   "Systems Analyst",
#   "Front-End Developer",
#   "Quality Assurance Engineer",
#   "Technical Writer",
#   "IT Support Specialist",]

job_description = ["As a Data Engineer, I took part in building a private Cloud with Openstack, as well as a Big Data platform with HortonWorks. I also designed and deployed a DevOps software factory. I have worked with the Safran Analytics OpenData project team, where I built, designed, and implemented data pipelines with Kafka and Spark.",
  "As a Software Developer, I developed web applications using Ruby on Rails. I implemented new features and optimized existing code. I collaborated with cross-functional teams, performed code reviews, and ensured high-quality software delivery.",
  "As a UX/UI Designer, I created user-centered designs, conducted user research, and developed wireframes and prototypes. I collaborated with developers to implement intuitive and visually appealing user interfaces.",
  "As a Project Manager, I oversaw project planning, execution, and delivery. I coordinated resources, managed budgets, and ensured projects were completed within specified timelines and scope.",
  "As a Data Analyst, I collected and analyzed data to provide insights and make data-driven recommendations. I created reports and visualizations to communicate findings to stakeholders.",
  "As a Full Stack Developer, I developed both front-end and back-end components of web applications. I designed databases, wrote server-side code, and implemented user interfaces using modern web technologies.",
  "As a Business Analyst, I analyzed business processes and requirements. I documented workflows, conducted stakeholder interviews, and proposed solutions to improve operational efficiency.",
  "As a Product Manager, I defined product strategies and roadmaps. I conducted market research, gathered customer feedback, and worked closely with development teams to deliver innovative products.",
  "As a Network Administrator, I managed and maintained computer networks. I troubleshooted network issues, implemented security measures, and ensured network performance and availability.",
  "As a Marketing Manager, I developed and implemented marketing strategies. I conducted market research, planned advertising campaigns, and analyzed marketing data to optimize performance.",
  "As a Systems Analyst, I analyzed business requirements and designed information systems solutions. I collaborated with stakeholders, documented system specifications, and oversaw system testing and implementation.",
  "As a Front-End Developer, I implemented user interfaces using HTML, CSS, and JavaScript. I collaborated with designers to bring their concepts to life and optimized website performance.",
"As a Quality Assurance Engineer, I designed and executed test plans to ensure software quality. I identified and reported bugs, collaborated with developers to resolve issues, and automated testing processes.",
"As a Technical Writer, I created clear and concise documentation for software products and technical processes. I collaborated with subject matter experts to gather information and produce user manuals and guides.",
"As an IT Support Specialist, I provided technical assistance and support to end-users. I troubleshooted hardware and software issues, configured systems, and ensured smooth IT operations."]

role_name = ["available", "employed"]

array = ["Small <350", "Medium <5000", "Large >5000"]

photo_urls.take(25).each_with_index do |url, index|
  user = User.new(
    email: Faker::Internet.unique.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    available: Faker::Boolean.boolean
  )
  file = URI.open(url)
  user.photo.attach(io: file, filename: "user#{index + 1}.png", content_type: "image/png")
  user.save!
end

puts "#{User.all.count} users created"

25.times do
  company = Company.create!(
    name: Faker::Company.name,
    sector: Faker::Company.industry,
    size: 5.times do
      array.sample
    end,
    siret: Faker::Company.french_siret_number
  )
end

puts "#{Company.all.count} companies created"

# Seed data for experiences
25.times do
  experience = Experience.new(
    job_name: Faker::Job.title,
    job_description: job_description.sample,
    start_date: Faker::Date.backward(days: 365),
    end_date: Faker::Date.backward(days: 30),
    skills: Faker::Job.key_skill
  )
  experience.user = User.all.sample
  experience.company = Company.all.sample
  experience.save!
end

puts "#{Experience.all.count} experiences created"

3.times do
  role = Role.new(
    recruiter: Faker::Boolean.boolean,
    admin: Faker::Boolean.boolean
  )
  role.user = User.all.sample
  role.company = Company.all.sample
  role.save!
end

puts "#{Role.all.count} roles created"

user_1 = User.create(
  email: "candidate@safe.test",
  first_name: "Laura",
  last_name: "Lotran",
  password: "123456",
  address: "1 ter rue des mauvais garçons",
  available: true
)
puts "user test candidate created"

user_2 = User.create(
  email: "recruiter@safe.test",
  first_name: "Joe",
  last_name: "Jolie",
  password: "123456",
  address: "30 rue du temple",
  available: false
)
puts "user test recruiter created"

company = Company.new(
  name: "ACME Corporation",
  sector: "Technology",
  size: "Large >5000",
  siret: "1234567890"
)
puts "company test created"
