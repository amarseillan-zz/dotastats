class MatchesController < ApplicationController
  require 'rest-client'



  def create
    id = params[:id] || 1
    flag = true
    mappings = {"match_id" => "_id"}
    while flag
      response = RestClient.get "http://api.steampowered.com/IDOTA2Match_570/GetMatchHistoryBySequenceNum/V001/?start_at_match_seq_num=#{id}&key=597421C29D1B9B71064093ED7532A566"
      if response.code != 200
        p "#{id} fallo"
        flag = false
      else
        result = JSON.parse response
        if result['result']
          if result['result']['matches']

            result['result']['matches'].each do |hash|
              renamed = Hash[hash.map {|k, v| [mappings[k]||k, v] }]
              match = Match.new renamed
              match.save
              id = match._id
            end
          end
        end
      end
    end
    render action: 'show'
  end



  def show
  end

end
