require 'rails_helper'

RSpec.describe "leagues/new", type: :view do
  before(:each) do
    assign(:league, League.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new league form" do
    render

    assert_select "form[action=?][method=?]", leagues_path, "post" do

      assert_select "input[name=?]", "league[name]"

      assert_select "textarea[name=?]", "league[description]"
    end
  end
end
