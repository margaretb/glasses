require 'sinatra'
require 'mandrill'

get '/' do
	erb :home
end


get '/men' do
	erb :men
end

get '/thanks' do
	erb :thanks
end

get '/women' do
	erb :women
end

get '/contact' do
	erb :contact
end

post '/contact' do
		
		contact_email=params["email"]
		contact_name=params["name"]

		email_body= "We received your message"


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
		 :from_email=>"sender@yourdomain.com"  
		}  
		sending = m.messages.send message
		puts sending
	redirect to ('/thanks')

end
