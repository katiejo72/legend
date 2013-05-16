require 'spec_helper'

describe Legend::Player do
  context "When commanded to look" do
    let(:desc) {Legend::Player.new.run_command(:look)}

    it 'describes the zone' do
      desc.should =~ /You are in a room./
    end

    it 'lists objects in the zone' do
      desc.should =~ /There is a candle on a table in the corner./
    end

    it 'lists the exits' do
      desc.should =~ /There are exits to the North and East./
    end
  end
end