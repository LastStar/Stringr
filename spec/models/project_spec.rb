require 'spec_helper'

describe Project do
  let(:project) {Project.new}
  it 'can be initialized' do
    project.should_not be_nil
  end
end
