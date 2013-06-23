class PlayerStatisticsController < ApplicationController
  def show
    respond_to do |format|
      format.json do
        player_summaries = Player.all.map(&:summary) 
        data_table = {aaData: player_summaries}
        render :json => data_table.to_json
      end
    end
  end
end
