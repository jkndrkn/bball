class PlayerStatisticsController < ApplicationController
  def index
  end
  
  def show
    respond_to do |format|
      format.json do
        player_summaries = Player.all.map(&:summary) 
        data_table = {aaData: player_summaries}
        render :json => data_table.to_json
      end
    end
  end
  
  private
  
  def player_stats(player)
    [player.given_name,
     player.surname,
     player.batting_average,
     player.home_runs,
     player.steals,
     player.rbi,
     player.runs,
     player.ops]
  end
end
