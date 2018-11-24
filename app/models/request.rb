class Request < ApplicationRecord
  enum kind_type: [:'no show', :liner, :ped, :quarter, :'mid calf', :'over the calf']
  enum color_type: [:blue, :green, :black, :white, :yellow, :red, :other]
  mount_uploader :photo, PhotoUploader
end
