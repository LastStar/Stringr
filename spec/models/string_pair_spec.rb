require 'spec_helper'

describe StringPair do
  let(:string_pair) {StringPair.new}
  it 'can be initialized' do
    string_pair.should_not be_nil
  end
  it 'has name' do
    string_pair.name = 'Some name'
    string_pair.name.should == 'Some name'
  end
  it 'has localizations' do
    string_pair.localizations = {'en' => 'Some name'}
    string_pair.localizations.should == {'en' => 'Some name'}
  end
end
