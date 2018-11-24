class Request < ApplicationRecord
  enum kind: [:noshow, :liner, :ped, :quarter, :midcalf, :overthecalf]
  enum color: [:blue, :green, :black, :white, :yellow, :red, :other]
  mount_uploader :photo, PhotoUploader
end
