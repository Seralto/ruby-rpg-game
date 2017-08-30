require './spec/spec_helper'

describe 'Weapon' do
  let(:subject) { Weapon.new('Sword', 5) }

  context 'when a Weapon is created' do
    it 'has valid attributes' do
      expect(subject.name).to eq('Sword')
      expect(subject.damage).to eq(5)
    end
  end
end
