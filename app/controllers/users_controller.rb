#Make a new user form
get '/users/new' do
	erb :'users/new'
end

#Add new user to database
post '/users' do
	@user = User.new(params[:user])
	if @user.save
		redirect '/'
	else
		@errors = @user.errors.full_messages
		erb :'users/new'
	end
end

#User profile page
get '/users/:id' do
	@user = User.find(params[:id])
	erb :'index'
end
