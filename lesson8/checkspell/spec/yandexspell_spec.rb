require 'rspec'
require_relative '../lib/checkspell/yandexspell'

describe CheckSpell::YandexSpell do
  let!(:text) { CheckSpell::YandexSpell.new("Превет") }

  describe 'has #check method' do
    it 'returns string representation of the yandexspell check' do
      expect(text.check).to eq(['Ошибка в слове: Превет. Правильно писать: ["Привет"]'])
    end
  end
end
