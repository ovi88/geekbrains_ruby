require 'open-uri'
require 'json'

module CheckSpell

  class YandexSpell

    YANDEX_API="http://speller.yandex.net/services/spellservice.json/checkText?text="

    def check
      uri = URI.escape (YANDEX_API + @text)
      get_uri = open(uri).read
      result = JSON.parse(get_uri)
      result.each do |r|
        puts "Ошибка в слове: #{r['word']}. Правильно писать: #{r['s']}"
      end
    end

    private

    def initialize text
      @text = text
    end
  end

end
