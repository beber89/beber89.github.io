require 'mail'

options = { :address              => "smtp-mail.outlook.com",
            :port                 => 587,
            :user_name            => 'baibars.dev@outlook.com',
            :password             => '',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }

Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
       to 'ece.mahmoud@gmail.com'
     from 'ece.mahmoud@gmail.com'
  subject 'Test'
     body 'Hurray!!! Test email! From Ruby'
end