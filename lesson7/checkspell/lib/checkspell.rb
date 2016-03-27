require_relative('checkspell/yandexspell')

module CheckSpell

  def self.check text
    YandexSpell.new(text).check
  end

end

#CheckSpell.check("синхрафазотрон в дубне")
