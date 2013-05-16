require 'spec_helper'

describe Legend do
  it 'should have a version number' do
    Legend::VERSION.should_not be_nil
  end
end
