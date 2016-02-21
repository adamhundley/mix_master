require 'rails_helper'

RSpec.feature "User edits a song" do
  scenario "they must provide a new title" do
    artist   = create(:artist)
    song = Song.create(title: "One Love")
    artist.songs << song

    visit song_path(song)

    click_on "Edit"
    fill_in "song_title", with: "Two Love"
    click_on "Update Song"

    expect(page).to have_content "Two Love"
      expect(page).to have_link artist.name, href: artist_path(artist)
  end
end
