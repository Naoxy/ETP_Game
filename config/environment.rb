# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV['SENDGRID_LOGIN'],
#   :password => ENV['SENDGRID_PWD'],
#   :domain => 'ecristonprenom@yopmail.com',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }

# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'ecristonprenom@yopmail.com')
to = Email.new(email:  @user.email)
subject = 'Bienvenue chez nous !'
content = Content.new(type: 'text/plain', value: 'Votre inscription à bien été validé')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers