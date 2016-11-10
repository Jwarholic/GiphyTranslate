get '/' do
  @languages = Translator.languages
  erb :index
end

