class Request < ApplicationRecord
  enum kind: [:'no show', :liner, :ped, :quarter, :'mid calf', :'over the calf']
  enum color: [:blue, :green, :black, :white, :yellow, :red, :other]
  mount_uploader :photo, PhotoUploader

  paginates_per 10
  belongs_to :user
end
