require 'rails_helper'

RSpec.describe "poops/new", type: :view do
  before(:each) do
    assign(:poop, Poop.new(
      user: nil
    ))
  end

  it "renders new poop form" do
    render

    assert_select "form[action=?][method=?]", poops_path, "post" do

      assert_select "input[name=?]", "poop[user_id]"
    end
  end
end
