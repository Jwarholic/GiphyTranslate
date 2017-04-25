# When we submit the form this is where our data is sent.

post '/translation/new' do
  # - Grabs the word or sentence to translate
  @word = params[:word]

  # - Tells which language to translate from
  input = params[:input]
  output = params[:output]

  # - Goes to the translator Module
  # - Uses the translate method to return the translation
  @translation = Translator.translate(@word,input,output)

  # - Returns a random giphy with the sentence as the input
  @giphy = Giphy.add_giphy(@word)

  # - Here we are using ajax/JS to send a partial with all of the returned data
  if request.xhr?
    erb :'translations/_new', layout: false, locals: {word: @word, language: @language, giphy: @giphy}
  else
    erb :'translations/new'
  end

end
