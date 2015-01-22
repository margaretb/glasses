require 'mandrill'

def send_email( contact_name, contact_email, email_body)
	m = Mandrill::API.new
    message = {  
     :subject => "Thanks for your email ",  
     :from_name => "Jim",  
     :text => email_body,  
     :to=>[  
       {  
         :email=> contact_email,
         :name=> contact_name,  
       }  
     ],  
     :html=>"<html><h1>Hi <strong>#{email_body}</strong>, how are you?</h1></html>",  
     :from_email=>"jim@nycda.com"  
    }  
    sending = m.messages.send message
    puts sending

end