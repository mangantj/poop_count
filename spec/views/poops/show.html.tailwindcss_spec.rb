require 'rails_helper'

RSpec.describe "poops/show", type: :view do
  before(:each) do
    assign(:poop, Poop.create!(
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
