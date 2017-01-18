require 'rails_helper'

RSpec.describe "transfers/edit", type: :view do
  before(:each) do
    @transfer = assign(:transfer, Transfer.create!(
      :from => "MyString",
      :to => "MyString",
      :value => "9.99",
      :user_id => 1,
      :dia => 1,
      :mes => "MyString",
      :ano => 1
    ))
  end

  it "renders the edit transfer form" do
    render

    assert_select "form[action=?][method=?]", transfer_path(@transfer), "post" do

      assert_select "input#transfer_from[name=?]", "transfer[from]"

      assert_select "input#transfer_to[name=?]", "transfer[to]"

      assert_select "input#transfer_value[name=?]", "transfer[value]"

      assert_select "input#transfer_user_id[name=?]", "transfer[user_id]"

      assert_select "input#transfer_dia[name=?]", "transfer[dia]"

      assert_select "input#transfer_mes[name=?]", "transfer[mes]"

      assert_select "input#transfer_ano[name=?]", "transfer[ano]"
    end
  end
end
