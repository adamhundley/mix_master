require 'rails_helper'

RSpec.feature "User edits a playlist" do
  scenario "they see the updated data for the playlist" do
    playlist = create(:playlist_with_songs)
    first, second, third = playlist.songs
    new_song = create(:song, title: "New Song")

    playlist_name = "New playlist"

    visit playlist_path(playlist)
    click_on "Edit"
    fill_in "playlist_name", with: playlist_name
    uncheck("song-#{first.title}")
    check("song-#{new_song.title}")
    click_on "Update Playlist"

    expect(page).to have_content playlist_name
    expect(page).to have_content new_song.title
    expect(page).to_not have_content first.title
  end
end
