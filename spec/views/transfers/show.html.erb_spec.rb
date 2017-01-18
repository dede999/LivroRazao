require 'rails_helper'

RSpec.describe "transfers/show", type: :view do
  before(:each) do
    @transfer = assign(:transfer, Transfer.create!(
      :from => "From",
      :to => "To",
      :value => "9.99",
      :user_id => 2,
      :dia => 3,
      :mes => "Mes",
      :ano => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/From/)
    expect(rendered).to match(/To/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Mes/)
    expect(rendered).to match(/4/)
  end
end
