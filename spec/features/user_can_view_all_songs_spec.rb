require 'rails_helper'

RSpec.feature "User can view artists songs" do
  scenario "the visit the artists page" do
    artist   = create(:artist)
    song = Song.create(title: "One Love")
    artist.songs << song
    song2 = Song.create(title: "Amen")
    artist.songs << song2

    #
    # visit songs_path
    #
    # expect(page).to have_content "Amen"
    # expect(page).to have_content "One Love"
    #
    # expect(page).to have_link song.title, href: song_path(song)
    # expect(page).to have_link song2.title, href: song_path(song2)
  end
end
