require 'spec_helper'

describe Legend::Client do
	context "When asked for a description" do
		let(:desc) {l = Legend::Client.new; l.description}

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