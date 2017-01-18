require 'rails_helper'

RSpec.describe "transfers/index", type: :view do
  before(:each) do
    assign(:transfers, [
      Transfer.create!(
        :from => "From",
        :to => "To",
        :value => "9.99",
        :user_id => 2,
        :dia => 3,
        :mes => "Mes",
        :ano => 4
      ),
      Transfer.create!(
        :from => "From",
        :to => "To",
        :value => "9.99",
        :user_id => 2,
        :dia => 3,
        :mes => "Mes",
        :ano => 4
      )
    ])
  end

  it "renders a list of transfers" do
    render
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Mes".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
