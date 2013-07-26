require 'us_states'

describe UsStates do
  describe ".normalize" do
    specify { UsStates.normalize("Alabama").should == "AL" }
    specify { UsStates.normalize("AL").should == "AL" }
    specify { UsStates.normalize("texas").should == "TX" }
    specify do
      expect { UsStates.normalize("south") }.to raise_error(UsStates::InvalidState)
    end
    specify { UsStates.normalize("tx").should == "TX" }
  end

  describe ".member?" do
    specify { UsStates.member?("AL").should be_true }
    specify { UsStates.member?("XT").should be_false }
    specify { UsStates.member?("Alabama").should be_true }
  end
end
