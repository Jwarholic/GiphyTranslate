post '/translation/new' do
  @word = params[:word]
  input = params[:input]
  output = params[:output]
  @language =
  @translation = Translator.translate(@word,input,output)
  erb :'translations/new'
end
