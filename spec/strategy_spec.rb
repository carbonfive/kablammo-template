require "kablammo"

RSpec.describe Strategy do
  subject { Player.load_strategy(battle.robots[0]) }

  let(:battle) do
    BattleMaker.make(
      [
        "_____",
        "_____",
        "0_x_1",
        "_____",
        "_____",
      ],
      { 1 => { rotation: 180 } }
    )
  end

  it "always fires" do
    subject.execute_turn("f")
  end
end
