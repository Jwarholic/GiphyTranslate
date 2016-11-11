post '/translation/new' do
  @word = params[:word]
  input = params[:input]
  output = params[:output]
  @translation = Translator.translate(@word,input,output)
  # erb :'translations/new'
  if request.xhr?
    erb :'translations/_new', layout: false, locals: {word: @word, language: @language}
  else
    erb :'translations/new'
  end
end
