class Match
  include Mongoid::Document
  field :_id, type: BigDecimal
  field :radiant_win, type: Boolean
  field :duration, type: BigDecimal
  field :start_time, type: BigDecimal
  field :match_seq_num, type: BigDecimal
  field :tower_status_radiant, type: Integer
  field :tower_status_dire, type: Integer
  field :barracks_status_radiant, type: Integer
  field :barracks_status_dire, type: Integer
  field :cluster, type: Integer
  field :first_blood_time, type: Integer
  field :lobby_type, type: Integer
  field :human_players, type: Integer
  field :leagueid, type: Integer
  field :positive_votes, type: Integer
  field :negative_votes, type: Integer
  field :game_mode, type: Integer
  field :players, type: Array



end
