FactoryGirl.define do

  # factory :song do
  #   title "One Love"
  # end

  factory :artist do
    name "Bob Marley"
    image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

    # factory :artist_with_songs do
    #   transient do
    #     songs_count 3
    #   end
    #
    #   after(:create) do |artist, evaluator|
    #     create_list(:user, evaluator.songs_count, artist: artist)
    #   end
    # end
  end
end
