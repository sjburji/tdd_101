require 'spec_helper'

module Rectangle
	describe 'Square' do
		context "the area" do
			it "is 25 given side is 5" do
				Rectangle::Square.build_square(5).area.should eql(25)
			end

			it "is 64 given side is 8" do
				Rectangle::Square.build_square(8).area.should eql(64)
			end
		end

		context "validations" do
			it "should fail for 0 side" do
				result = Rectangle::Square.build_square(0)
				result[:error].should == "invalid arguements"
			end

			it "should fail -ve side" do
				result = Rectangle::Square.build_square(-1)
				result[:error].should == "invalid arguements"
			end
		end
	end
end