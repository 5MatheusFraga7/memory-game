class MemoryGameController < ApplicationController

    before_action :index, :verify_player_name, :except => [:get_name_of_character]
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

    def get_name_of_character
        
        respond_to do |format|
            format.json { render json: { status: 'success', name: 'Luffy' }, status: 200 }
        end
        
    end

end
