require 'rails_helper'

RSpec.feature "User can view all playlist" do
  scenario "they see the names of each playlist" do
    playlists = create_list(:playlist_with_songs, 2)

    visit playlists_path

    playlists.each do |playlist|
      expect(page).to have_link playlist.name, href: playlist_path(playlist)
    end
  end
end
