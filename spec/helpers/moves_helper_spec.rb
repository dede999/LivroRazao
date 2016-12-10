require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the MovesHelper. For example:
#
# describe MovesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
FactoryGirl.define do
  factory :user do
    email 'Some@one'
    encrypted_password ''
    id 17
  end

  factory :move do
    user_id 17
    tipo 'entrada'
    value 15.0
  end
end

RSpec.describe MovesHelper, type: :helper do
  it "should return the correct total" do
    my_moves = FactoryGirl.build(:move)
    expect(totale('entrada', 17)).to eq 15.0
  end
end
