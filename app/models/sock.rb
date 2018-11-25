class Sock < ApplicationRecord
    belongs_to :user
    paginates_per 1
    enum kind: [:'no show', :liner, :ped, :quarter, :'mid calf', :'over the calf']
    enum color: [:blue, :green, :black, :white, :yellow, :red, :other]
end
