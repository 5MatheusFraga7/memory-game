class MemoryGameController < ApplicationController

    before_action :index, :verify_player_name
    require 'faker'

    def index 

        @user  = params['player-name']
        @cards = []

        for i in 1..15
           @cards << { "character" => Faker::JapaneseMedia::OnePiece.character, "index" => i  }
        end


    end

    def verify_player_name

        redirect_to '/' if params['player-name'].nil? || params['player-name'].empty?
    end

end
