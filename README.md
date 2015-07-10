# Portfolio

Portfolio is a work in progress web-based portfolio management site built with Rails.

To build locally:
- clone repo
- bundle install
- rake db:create
- rake db:migrate
- rake db:test:prepare
- rake db:seed (if you want seeded example data)
- rails s
- navigate to localhost:3000 in your browser


If Seeded, administrator credentials are:
- Email: admin@admin.com
- password: 123456789

Otherwise, you can create admins manually in the rails console with:
$ rails console
$ User.create({ email: "youremail@domain.com", password: "yourpassword", password_confirmation: "yourpassword", admin?: true})


Running live on Heroku @ ginkko-portfolio.herokuapp.com
