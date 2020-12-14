require 'rails_helper'

describe Member do
  before :each do
    @attrs = {
      name: "Fire Nation bar patron's friend",
      affiliation: "Fire Nation",
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/4/40/Fire_Nation_bar_patron%27s_friend.png/revision/latest?cb=20130308170725",
      enemies: ["Katara"],
      allies: ["Fire Nation bar patron"]
      }

    @member = Member.new(@attrs)

  end

  it "exists and has attributes" do
    expect(@member).to be_a(Member)
    expect(@member.name).to eq(@attrs[:name])
    expect(@member.affiliation).to eq(@attrs[:affiliation])
    expect(@member.photo).to eq(@attrs[:photoUrl])
    expect(@member.enemies).to eq(@attrs[:enemies])
    expect(@member.allies).to eq(@attrs[:allies])
  end
end
