require './spec/spec_helper'

describe 'Potion' do
  let(:subject) { Potion.new(name: 'Elixir', healing_points: 20) }
  let(:hero) { Rpg::Hero.new(name: 'Odin') }

  context 'when a Potion is created' do
    it 'has valid attributes' do
      expect(subject.name).to eq('Elixir')
      expect(subject.healing_points).to eq(20)
    end

    it 'can heal' do
      initial_hp = hero.hp
      subject.heal(hero)
      expect(hero.hp).to eq(initial_hp + subject.healing_points)
    end
  end
end
