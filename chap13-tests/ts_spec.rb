require_relative "tennis_scorer"

describe TennisScorer, "basic scoring" do
  let(:ts) { TennisScorer.new }
  it "should start with a score of 0-0" do
    expect(ts.score).to be == "0-0"
  end
  it "should be 15-0 if the server wins a point" do
    ts.give_point_to(:server)
    expect(ts.score).to be == "15-0"
  end
  it "should be 0-15 if the receiver wins a point" do
    ts.give_point_to(:receiver)
    expect(ts.score).to be == "0-15"
  end
  it "should be 15-15 after they both win a point" do
    ts.give_point_to(:server)
    ts.give_point_to(:receiver)
    expect(ts.score).to be == "15-15"
  end
  it "should be 40-0 after the server wins three points" do
    3.times do
      ts.give_point_to :server
    end
    expect(ts.score).to be == "40-0"
  end
  it "should be 0-40 after the receiver wins three points" do
    3.times do
      ts.give_point_to :receiver
    end
    expect(ts.score).to be == "0-40"
  end
  it "should be W-L after the server wins four points" do
    4.times { ts.give_point_to(:server) }
    2.times { ts.give_point_to(:receiver) }
    expect(ts.score).to be == "W-L"
  end 
  it "should be L-W after the receiver wins four points" do
    4.times { ts.give_point_to(:receiver) }
    2.times { ts.give_point_to(:server) }
    expect(ts.score).to be == "L-W"
  end
  it "should be Deuce after each wins three points" do
    3.times do
      ts.give_point_to :receiver
      ts.give_point_to :server
    end
    expect(ts.score).to be == "Deuce"
  end
  it "should be A-server after each wins three points and the server get one more" do
    3.times do
      ts.give_point_to :receiver
      ts.give_point_to :server
    end
    ts.give_point_to :server
    expect(ts.score).to be == "A-server"
  end
  it "should be A-receiver after each wins three points and the server get one more" do
    3.times do
      ts.give_point_to :receiver
      ts.give_point_to :server
    end
    ts.give_point_to :receiver
    expect(ts.score).to be == "A-receiver"
  end
  it "should be W-L after each wins three points and the server get two more" do
    3.times do
      ts.give_point_to :receiver
      ts.give_point_to :server
    end
    2.times { ts.give_point_to :server }
    expect(ts.score).to be == "W-L"
  end
  it "should be L-W after each wins three points and the receiver get two more" do
    3.times do
      ts.give_point_to :receiver
      ts.give_point_to :server
    end
    2.times { ts.give_point_to :receiver }
    expect(ts.score).to be == "L-W"
  end
  it "should be Deuce after each wins three points, the server gets one more and the receiver gets one more" do
    3.times do
      ts.give_point_to :receiver
      ts.give_point_to :server
    end
    ts.give_point_to :receiver
    ts.give_point_to :server
    expect(ts.score).to be == "Deuce"
  end
end
