feature "Homepage" do
  scenario "Show user homepage and allow messages to be sent" do
    visit("/")
    expect(page).to have_content "TALK2ME"
    fill_in "message", with: "Talk to me"
    click_button "Send"
    expect(page).to have_content "Talk to me"
  end
end

feature "Messages" do
    scenario "Will only display first twenty characters of each message" do
      visit("/")
      fill_in "message", with: "Talk to me"
      click_button "Send"
      fill_in "message", with: "How are you doing today?"
      click_button("Send")
      expect(page).to have_content "Talk to me"
      expect(page).to have_content "How are you doing to"
    end
  end
