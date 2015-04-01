require 'spec_helper'

describe Trello::CardSync do
  context 'card has a label' do
    it 'calls AddUserToProject' do
      Trello::AddUserToProject.any_instance.should_receive :call!

      card = double('card')
      card.stub(:name)
      card.stub(:card_labels) { ['label'] }

      described_class.new(card).call!
    end
  end

  context 'card does not have a label' do
    it 'calls RemoveUserFromProjects' do
      Trello::RemoveUserFromProjects.any_instance.should_receive :call!

      card = double('card')
      card.stub(:name)
      card.stub(:card_labels) { [] }

      described_class.new(card).call!
    end
  end
end
