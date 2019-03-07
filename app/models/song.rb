class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :billboard_song, optional:true
end
