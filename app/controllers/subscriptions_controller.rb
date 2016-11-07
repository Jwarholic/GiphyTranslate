post '/subscriptions' do
	channel = Channel.find_by(params[:channel_id])
end