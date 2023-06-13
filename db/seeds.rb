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
Chatroom.delete_all
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

#arrays :
# skills = [
#   "Programming",
#   "Writing",
#   "Communication",
#   "Leadership",
#   "Problem-solving",
#   "Creativity",
#   "Critical-thinking",
#   "Teamwork",
#   "Adaptability",
#   "Time-management",
#   "Organization",
#   "Analytical",
#   "Research",
#   "Design",
#   "Collaboration",
#   "Presentation",
#   "Negotiation",
#   "Decision-making",
#   "Data analysis",
#   "Sales",
#   "Marketing",
#   "Public speaking",
#   "Networking",
#   "Strategic planning",
#   "Project management",
#   "Customer service",
#   "Financial management",
#   "Innovation",
#   "Coaching",
#   "Troubleshooting",
#   "Content writing",
#   "Graphic design",
#   "Web development",
#   "Data entry",
#   "SEO optimization",
#   "Event planning",
#   "Photography",
#   "Video editing",
#   "Teaching",
#   "Translation",
#   "Editing",
#   "Social media management",
#   "Researching",
#   "Public relations",
#   "Budgeting",
#   "Team management",
#   "Copywriting",
#   "Software development",
#   "UX/UI design",
#   "Market research",
#   "Branding",
#   "Conflict resolution",
#   "Customer support",
#   "Database management",
#   "Data visualization",
#   "Statistical analysis",
#   "Business development",
#   "Logistics",
#   "Quality control",
#   "Supply chain management",
#   "Training",
#   "Mentoring",
#   "Event coordination",
#   "Risk management",
#   "Problem analysis",
#   "Presentation design",
#   "Digital marketing",
#   "Mobile app development",
#   "Proofreading",
#   "Content strategy",
#   "Grant writing",
#   "Software testing",
#   "Financial analysis",
#   "Inventory management",
#   "Forecasting",
#   "Agile methodology",
#   "Product management",
#   "Market analysis",
#   "Crisis management",
#   "Data mining",
#   "Research design",
#   "Leadership development",
#   "Supplier management",
#   "Legal research",
#   "Web analytics",
#   "Database administration",
#   "User support",
#   "Contract negotiation",
#   "Risk assessment",
#   "Copy editing",
#   "Event marketing",
#   "Wireframing",
#   "Time tracking"
# ]

domaines = [
  "walmart.com",
  "samsung.com",
  "apple.com",
  "berkshirehathaway.com",
  "exxonmobil.com",
  "mckesson.com",
  "unitedhealthgroup.com",
  "volvogroup.com",
  "greatwalloffireandice.com",
  "bloomberg.com",
  "chevron.com",
  "attdirectv.com",
  "cigna.com",
  "amazon.com",
  "ford.com",
  "generalmotors.com",
  "cardinalhealth.com",
  "costco.com",
  "verizon.com",
  "pingan.com"
]

job_titles = [
  "Software Engineer",
  "Marketing Manager",
  "Data Analyst",
  "Graphic Designer",
  "Sales Representative",
  "Financial Analyst",
  "Human Resources Specialist",
  "Project Manager",
  "Customer Support Representative",
  "Product Manager",
  "Accountant",
  "Business Development Manager",
  "Operations Coordinator",
  "Content Writer",
  "UX Designer",
  "Quality Assurance Tester",
  "Social Media Coordinator",
  "IT Administrator",
  "Research Scientist",
  "Legal Assistant",
  "Network Engineer",
  "Event Planner",
  "Systems Analyst",
  "Executive Assistant",
  "Web Developer",
  "Digital Marketing Specialist",
  "Supply Chain Manager",
  "Administrative Coordinator",
  "Operations Manager",
  "Customer Success Manager",
  "Public Relations Specialist",
  "Financial Advisor",
  "Marketing Coordinator",
  "Data Scientist",
  "Art Director",
  "Sales Manager",
  "Business Analyst",
  "Human Resources Manager",
  "Software Developer",
  "Product Designer",
  "Account Manager",
  "Financial Controller",
  "Operations Analyst",
  "Content Strategist",
  "UX Researcher",
  "IT Support Specialist",
  "Research Assistant",
  "Legal Counsel",
  "Network Administrator",
  "Event Coordinator",
  "Systems Administrator",
  "Executive Director"
]

job_descriptions = [
  "As a Software Engineer, I developed scalable web applications using Ruby on Rails and collaborated with cross-functional teams to deliver high-quality software solutions.",
  "As a Marketing Manager, I devised and executed strategic marketing campaigns, managed digital advertising channels, and analyzed campaign performance to drive customer engagement and lead generation.",
  "As a Data Analyst, I performed data cleansing, analysis, and visualization using Python and SQL. I prepared comprehensive reports and dashboards to provide valuable insights to stakeholders.",
  "As a Graphic Designer, I created visually appealing designs for both digital and print media, including logos, brochures, and website layouts. I collaborated with clients to understand their design requirements and deliver creative solutions.",
  "As a Sales Representative, I actively pursued new leads, conducted product demonstrations, and negotiated contracts to achieve and exceed sales targets. I maintained strong relationships with clients and provided exceptional customer service.",
  "As a Financial Analyst, I performed financial forecasting, budgeting, and variance analysis to support strategic decision-making. I prepared financial reports and conducted market research to identify investment opportunities.",
  "As a Human Resources Specialist, I managed recruitment processes, conducted interviews, and onboarded new employees. I also implemented and administered HR policies and procedures to ensure a positive work environment.",
  "As a Project Manager, I led cross-functional teams, developed project plans, and monitored progress to ensure timely and successful project delivery. I effectively communicated with stakeholders and resolved any issues that arose during the project lifecycle.",
  "As a Customer Support Representative, I provided prompt and efficient assistance to customers via phone, email, and chat. I resolved customer complaints, documented interactions, and maintained a high level of customer satisfaction.",
  "As a Product Manager, I defined product roadmaps, conducted market research, and collaborated with development teams to deliver innovative products. I gathered customer feedback and continuously improved product features.",
  "As an Accountant, I managed financial records, prepared financial statements, and ensured compliance with regulatory requirements. I analyzed financial data to identify cost-saving opportunities and provided financial advice to stakeholders.",
  "As a Business Development Manager, I identified new business opportunities, developed strategic partnerships, and negotiated contracts. I analyzed market trends and customer needs to drive business growth.",
  "As an Operations Coordinator, I coordinated logistical activities, monitored inventory levels, and optimized supply chain processes. I ensured smooth operations and implemented process improvements to increase efficiency.",
  "As a Content Writer, I created engaging and SEO-friendly content for websites, blogs, and social media platforms. I conducted thorough research on various topics and tailored content to target audiences.",
  "As a UX Designer, I conducted user research, created wireframes and prototypes, and performed usability testing to enhance the user experience. I collaborated with cross-functional teams to implement design improvements.",
  "As a Quality Assurance Tester, I developed and executed test plans, identified software defects, and reported issues to the development team. I ensured the delivery of high-quality software products.",
  "As a Social Media Coordinator, I managed social media accounts, created and scheduled content, and monitored engagement metrics. I implemented social media strategies to increase brand awareness and drive user engagement.",
  "As an IT Administrator, I managed network infrastructure, provided technical support to employees, and implemented cybersecurity measures. I ensured the smooth functioning of IT systems and resolved any IT-related issues.",
  "As a Research Scientist, I designed and conducted experiments, analyzed data, and published research papers. I collaborated with fellow researchers and presented findings at scientific conferences.",
  "As a Legal Assistant, I conducted legal research, prepared legal documents, and assisted in case preparation. I maintained legal files and provided administrative support to legal professionals.",
  "As a Network Engineer, I designed and implemented network infrastructure, monitored network performance, and resolved network issues. I ensured the security and reliability of the organization's network.",
  "As an Event Planner, I organized and executed corporate events, conferences, and trade shows. I coordinated with vendors, managed budgets, and ensured the smooth operation of events.",
  "As a Systems Analyst, I analyzed business requirements, designed system solutions, and oversaw system implementation. I conducted user training and provided ongoing technical support.",
  "As an Executive Assistant, I managed calendars, arranged meetings, and coordinated travel arrangements for executives. I prepared reports and presentations, maintained confidentiality, and handled sensitive information.",
  "As a Web Developer, I developed responsive and user-friendly websites using HTML, CSS, and JavaScript. I collaborated with designers and content creators to deliver visually appealing and functional websites.",
  "As a Digital Marketing Specialist, I developed and implemented digital marketing strategies, managed online advertising campaigns, and analyzed campaign performance. I utilized SEO and SEM techniques to increase website traffic and conversions.",
  "As a Supply Chain Manager, I managed end-to-end supply chain operations, optimized inventory levels, and coordinated with suppliers and distributors. I implemented supply chain strategies to improve efficiency and reduce costs.",
  "As an Administrative Coordinator, I provided administrative support to various departments, managed office supplies, and coordinated meetings and events. I maintained records and ensured smooth office operations.",
  "As an Operations Manager, I oversaw daily operations, managed staff, and optimized processes to maximize productivity and efficiency. I analyzed operational data and implemented improvements to streamline workflows.",
  "As a Customer Success Manager, I built and maintained strong relationships with customers, ensured their success and satisfaction, and identified opportunities for upselling and cross-selling. I provided ongoing support and resolved any issues that arose.",
  "As a Public Relations Specialist, I developed and implemented PR campaigns, wrote press releases, and managed media relations. I monitored public perception and handled crisis communications.",
  "As a Financial Advisor, I provided personalized financial advice and investment recommendations to clients. I conducted risk assessments, developed financial plans, and helped clients achieve their financial goals.",
  "As a Marketing Coordinator, I supported marketing campaigns, managed social media platforms, and assisted with content creation. I conducted market research and analyzed marketing metrics.",
  "As a Data Scientist, I analyzed large datasets, built predictive models, and extracted insights to drive data-driven decision-making. I utilized machine learning algorithms and statistical techniques.",
  "As an Art Director, I provided creative direction, developed visual concepts, and oversaw the execution of artistic projects. I collaborated with designers, photographers, and other artists to deliver compelling visuals.",
  "As a Sales Manager, I developed and executed sales strategies, managed a sales team, and achieved revenue targets. I analyzed market trends and customer needs to drive sales growth.",
  "As a Business Analyst, I conducted business process analysis, gathered requirements, and documented workflows. I collaborated with stakeholders to identify areas for process improvement and developed solutions.",
  "As a Human Resources Manager, I developed and implemented HR strategies, managed employee relations, and oversaw talent acquisition and development. I ensured compliance with labor laws and implemented HR policies.",
  "As a Software Developer, I designed and developed software applications, conducted code reviews, and resolved technical issues. I collaborated with cross-functional teams to deliver high-quality software solutions.",
  "As a Product Designer, I created user-centric product designs, developed prototypes, and conducted user testing. I collaborated with engineers and product managers to bring designs to life.",
  "As an Account Manager, I maintained relationships with key clients, identified upselling opportunities, and resolved any account-related issues. I ensured customer satisfaction and retention.",
  "As a Financial Controller, I managed financial operations, prepared financial statements, and ensured compliance with accounting standards. I provided financial analysis and recommendations to support business decisions.",
  "As an Operations Analyst, I analyzed operational data, identified trends and inefficiencies, and recommended process improvements. I developed and maintained operational reports and dashboards.",
  "As a Content Strategist, I developed content strategies, conducted keyword research, and managed content calendars. I ensured content alignment with brand guidelines and target audience.",
  "As a UX Researcher, I conducted user research studies, collected and analyzed user feedback, and generated actionable insights. I collaborated with designers and product teams to optimize the user experience.",
  "As an IT Support Specialist, I provided technical support to employees, resolved IT issues, and maintained hardware and software systems. I ensured the smooth functioning of IT infrastructure.",
  "As a Research Assistant, I assisted in research projects, conducted literature reviews, and collected and analyzed data. I documented research findings and supported senior researchers.",
  "As a Legal Counsel, I provided legal advice and guidance, drafted and reviewed contracts, and represented the organization in legal proceedings. I ensured compliance with applicable laws and regulations.",
  "As a Network Administrator, I managed network infrastructure, implemented security measures, and resolved network issues. I ensured the smooth operation of the organization's network.",
  "As an Event Coordinator, I organized and coordinated various types of events, including conferences, meetings, and social gatherings. I managed logistics, budgeting, and vendor relationships.",
  "As a Systems Administrator, I managed and maintained computer systems, installed and configured software, and resolved technical issues. I provided technical support to users and ensured system security.",
  "As an Executive Director, I provided strategic leadership, developed and implemented organizational policies, and oversaw the overall operations of the organization. I collaborated with the board of directors and key stakeholders."
]

company_photos = ['https://dirigeants-entreprise.com/content/uploads/carrefour.png', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Tesla_logo.png/640px-Tesla_logo.png', 'https://img.freepik.com/icones-gratuites/mac-os_318-10374.jpg?w=2000', 'https://assets.stickpng.com/images/608ab90d0517f5000437ccc8.png', 'https://i.pinimg.com/736x/82/bb/91/82bb91537db98fc714fd4157d6f325bc.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Fnac_Logo.svg/1984px-Fnac_Logo.svg.png', 'https://nedpark.fr/wp-content/uploads/2020/08/google-logo-carre-2015-09-400.png', 'https://logodownload.org/wp-content/uploads/2022/12/figma-logo-0.png', 'https://cdn6.aptoide.com/imgs/8/f/1/8f19ac835c875b1905f90e7c6b92d386_icon.png', 'https://upload.wikimedia.org/wikipedia/commons/5/57/Binance_Logo.png', 'https://altcoinsbox.com/wp-content/uploads/2023/01/kraken-logo.jpg', 'https://d2m7i0qajk8937.cloudfront.net/brand/hZA1lbgk5TJ2iSIk-litebit-eu.png', 'https://altcoinsbox.com/wp-content/uploads/2022/12/coinbase-logo.png', 'https://assets.devialet.com/fr-fr/media/dvl_media/Logo_devialet_drop_media_1.png?twic=v1/background=f4f4f4/cover=800x800', 'https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/2648fc0e-6855-4745-823e-dc5df5168457.JPG', 'https://logo-marque.com/wp-content/uploads/2021/09/Intel-Logo.png', 'https://media.licdn.com/dms/image/C4D0BAQF1lu7Ky8XTVQ/company-logo_200_200/0/1540454558895?e=2147483647&v=beta&t=H38hVCxcob1N5wGdZEjKJPREetV31JSwBf2J_bLTM8g', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpasserelle.sustainsoft.eu%2Fclimate-act&psig=AOvVaw2H_8w8HzY5QVuCuxVAsyyh&ust=1686352039046000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJCL3oPltP8CFQAAAAAdAAAAABAE', 'https://a.mktgcdn.com/p/5vTrrozZ6TBZeAmce9R7omlyFAwVaU0GP7RMlXApbjQ/2925x2925.png', 'https://res.cloudinary.com/hm3mec8bl/image/upload/v1467794964/ncq7fewomwz0xjeydbdf.png', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/2048px-Microsoft_logo.svg.png', 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Paypal_2014_logo.png', 'https://storage.googleapis.com/opensea-static/Logomark/Logomark-Blue.png']
company_name = ["Carrefour", 'Tesla', 'Apple', 'Lidl', 'Sonos', 'Fnac', 'Google', 'Figma', 'Ledger','Binance', 'Kraken', 'Litebit', 'Coinbase', 'Devialet', 'Bose', 'Intel', 'ACWA Robotics', 'Akagreen', 'Fitness Park', 'BPIfrance', 'Microsoft', 'Paypal', 'Opensea']
company_sector = ["Retail", "Automotive", "Technology", "Retail", "Audio", "Retail", "Technology", "Design", "Cryptocurrency", "Cryptocurrency", "Cryptocurrency", "Cryptocurrency", "Electronics", "Audio", "Audio", "Technology", "Robotics", "Agriculture", "Fitness", "Financial", "Technology", "Financial", "Cryptocurrency"]
array = ["Small <350", "Medium <5000", "Large >5000"]


company_photos.each_with_index do |url, index|
  company = Company.new(
    name: company_name[index],
    sector: company_sector[index],
    size: "Large > 5000",
    siret: Faker::Company.french_siret_number
  )
  file = URI.open(url)
  company.photo.attach(io: file, filename: "#{company.name}.png", content_type: "image/png")
  company.save!
  puts "#{company.name} in #{company.sector} was created"
end

puts "#{Company.all.count} companies created"

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
  puts "#{user.first_name} #{user.last_name} was created"
end

puts "#{User.all.count} users created"


# Seed data for experiences
100.times do
  random_index = rand(51)
  experience = Experience.new(
    job_name: job_titles[random_index],
    job_description: job_descriptions[random_index],
    start_date: Faker::Date.backward(days: 365),
    end_date: Faker::Date.backward(days: 30),
    skills: Array.new(rand(2..3)) { Faker::Job.key_skill },
    certified: true
  )
  experience.user = User.all.sample
  experience.company = Company.all.sample
  experience.save!
  puts "Experience of #{experience.job_name} created"
end

puts "#{Experience.all.count} experiences created"

3.times do
  role = Role.new(
    recruiter: Faker::Boolean.boolean,
    admin: Faker::Boolean.boolean
  )
  users = User.where(available: true)
  role.user = users.all.sample
  role.company = Company.all.sample
  role.save!
  puts "Recruiter for #{role.company.name} was assigned to #{role.user.first_name} #{role.user.last_name} with id: #{role.user.id}."
end

puts "#{Role.all.count} roles created"

user_1 = User.create(
  email: "candidate@safe.test",
  first_name: "Laura",
  last_name: "Lotran",
  password: "123456",
  address: "1 ter rue des mauvais garçons"
)
puts "user test candidate created"

user_2 = User.create(
  email: "recruiter@safe.test",
  first_name: "Joe",
  last_name: "Jolie",
  password: "123456",
  address: "30 rue du temple",
  available: true
)
file = URI.open("https://images.unsplash.com/photo-1658756321927-ed2da549bab3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80")
user_2.photo.attach(io: file, filename: "user#2.png", content_type: "image/png")

role = Role.new(recruiter: true, admin: false)
role.company = Company.all.sample
role.save
user_2.role = role

user_2.save
puts "user test recruiter without company created"

user_3 = User.create(
  email: "ceo@safe.test",
  first_name: "Lone",
  last_name: "Kusm",
  password: "123456",
  address: "5 rue Montmartre"
)
puts "CEO test created"

user_4 = User.create(
  email: "people@safe.test",
  first_name: "Onel",
  last_name: "Smuk",
  password: "123456",
  address: "5 rue Montmartre"
)
puts "People test created"

company = Company.new(
  name: "ACME Corporation",
  sector: "Technology",
  size: "Large >5000",
  siret: "1234567890"
)
puts "company test created"

chatroom_1 = Chatroom.create!(
  name: "#{user_2.first_name}",
  user_a_id: user_1.id,
  user_b_id: user_2.id
)

chatroom_2 = Chatroom.create!(
  name: "#{user_3.first_name}",
  user_a_id: user_1.id,
  user_b_id: user_3.id
)

chatroom_3 = Chatroom.create!(
  name: "#{user_4.first_name}",
  user_a_id: user_1.id,
  user_b_id: user_4.id
)

puts "chatroom test created"
