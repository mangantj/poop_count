require 'rails_helper'

RSpec.describe "leagues/edit", type: :view do
  let(:league) {
    League.create!(
      name: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:league, league)
  end

  it "renders the edit league form" do
    render

    assert_select "form[action=?][method=?]", league_path(league), "post" do

      assert_select "input[name=?]", "league[name]"

      assert_select "textarea[name=?]", "league[description]"
    end
  end
end
