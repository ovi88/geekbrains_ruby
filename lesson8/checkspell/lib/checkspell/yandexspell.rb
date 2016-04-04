require 'open-uri'
require 'json'

module CheckSpell

  class YandexSpell

    YANDEX_API="http://speller.yandex.net/services/spellservice.json/checkText?text="

    def check
      spell = []
      uri = URI.escape (YANDEX_API + @text)
      get_uri = open(uri).read
      result = JSON.parse(get_uri)
      result.each do |r|
        result = "Ошибка в слове: #{r['word']}. Правильно писать: #{r['s']}"
        puts result
        spell.push result
        #return result
      end
      return spell
    end

    private

    def initialize text
      @text = text
    end
  end

end

#CheckSpell::YandexSpell.new("Превет").check
