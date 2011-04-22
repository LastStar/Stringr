require 'spec_helper'

describe Project do
  let(:project) {Project.new}
  it 'can be initialized' do
    project.should_not be_nil
  end
  it 'has name' do
    project.name = 'Some name'
    project.name.should == 'Some name'
  end
  it 'has many string pairs' do
    project.string_pairs = [StringPair.new]
    project.string_pairs.should_not be_empty
  end
end
