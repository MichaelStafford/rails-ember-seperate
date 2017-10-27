# frozen_string_literal: true

describe "messaging", type: :feature, js: true do
  let!(:message) { create(:message) }

  it "displays some messages" do
    visit "/messages"
    expect(page).to have_content message.text
  end
end