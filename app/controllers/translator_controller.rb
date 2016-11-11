post '/translation/new' do
  @word = params[:word]
  input = params[:input]
  output = params[:output]
  @translation = Translator.translate(@word,input,output)
  @giphy = Giphy.add_giphy(@word)
  if request.xhr?
    erb :'translations/_new', layout: false, locals: {word: @word, language: @language, giphy: @giphy}
  else
    erb :'translations/new'
  end
end
