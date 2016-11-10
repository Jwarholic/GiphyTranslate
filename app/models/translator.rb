module Translator
  include HTTParty
  KEY = ENV['GOOGLE']

    def self.translate(word, input, output)
      url = "https://www.googleapis.com/language/translate/v2?key=#{KEY}&q=#{word}&source=#{input}&target=#{output}"

      response = HTTParty.get(url)
      data = response.parsed_response["data"]
      data["translations"][0]["translatedText"]
    end

    def self.languages
      EasyTranslate::LANGUAGES
    end

end
