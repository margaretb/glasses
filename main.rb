require 'sinatra'

require_relative "./methods.rb"
get '/' do

	@title = "home"
	erb :home

  

end



get '/thanks' do
	@title = "Thank You"
	erb :thanks
end

get '/glasses' do
	@title = "glasses"
	erb :glasses
end

get '/contact' do
	@title = "contact"
	erb :contact
  	
end



post '/contact' do
    contact_email = params["email"]
    contact_name = params["name"]
	email_body = "We received your message"
	
	send_email(contact_name, contact_email,  email_body)

 	redirect to('/thanks')

end
