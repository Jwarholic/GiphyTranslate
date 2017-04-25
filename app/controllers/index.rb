#This is for the home page.
get '/' do
	# - This is grabbing all of the abbreviations that is used with the google translator API.
  @languages = Translator.languages
  erb :index
end

