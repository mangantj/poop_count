require 'rails_helper'

RSpec.describe "poops/edit", type: :view do
  let(:poop) {
    Poop.create!(
      user: nil
    )
  }

  before(:each) do
    assign(:poop, poop)
  end

  it "renders the edit poop form" do
    render

    assert_select "form[action=?][method=?]", poop_path(poop), "post" do

      assert_select "input[name=?]", "poop[user_id]"
    end
  end
end
