require 'rails_helper'

RSpec.feature "User creates a song" do
  scenario "they must provide a title" do
    artist   = create(:artist)

    visit artist_path(artist)

    click_on "New song"
    click_on "Create Song"

    expect(page).to have_content "Title can't be blank"
  end
end
