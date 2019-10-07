User.create!(
    email: "test@test.com",
    password: "654321",
    password_confirmation: "654321",
    name: "admin user",
    roles: "site_admin"
)
puts "1 admin user created"

User.create!(
    email: "regular@test.com",
    password: "654321",
    password_confirmation: "654321",
    name: "regular user"
)
puts "1 regular user created"

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end
puts "three topics created"
10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "My Body #{blog}",
        topic_id: Topic.last.id
    )
end

puts "10 blogs created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 Skills created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "bodybody body",
        main_image: "https://via.placeholder.com/600x400C/O%20https://placeholder.com/",
        thumb_image: "https://via.placeholder.com/350x200C/O%20https://placeholder.com/"
    )
end
Portfolio.create!(
        title: "Portfolio title #{9}",
        subtitle: "Angular",
        body: "bodybody body",
        main_image: "https://via.placeholder.com/600x400C/O%20https://placeholder.com/",
        thumb_image: "https://via.placeholder.com/350x200C/O%20https://placeholder.com/"
    )


puts "9 portfolio items created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology  #{technology}"
    )
end

puts "3 technologies created"