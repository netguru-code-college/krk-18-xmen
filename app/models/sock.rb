class Sock < ApplicationRecord
    belongs_to :user
    enum kind: [:'no show', :liner, :ped, :quarter, :'mid calf', :'over the calf']
    enum color: [:blue, :green, :black, :white, :yellow, :red, :other]
end
