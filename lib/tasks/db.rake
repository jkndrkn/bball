namespace :db do
  MAPPING = {
    "SURNAME" => "surname",
    "GIVEN_NAME" => "given_name",
    "POSITION" => "position",
    "GAMES" => "games",
    "GAMES_STARTED" => "games_started",
    "AT_BATS" => "at_bats",
    "RUNS" => "runs",
    "HITS" => "hits",
    "DOUBLES" => "doubles",
    "TRIPLES" => "triples",
    "HOME_RUNS" => "home_runs",
    "RBI" => "rbi",
    "STEALS" => "steals",
    "CAUGHT_STEALING" => "caught_stealing",
    "SACRIFICE_HITS" => "sacrifice_hits",
    "SACRIFICE_FLIES" => "sacrifice_flies",
    "ERRORS" => "fielding_errors",
    "PB" => "pb",
    "WALKS" => "walks",
    "STRUCK_OUT" => "struck_out",
    "HIT_BY_PITCH" => "hit_by_pitch",
  }

  SEED_SOURCE_PATH = "data/1998statistics.xml"

  task :seed => [:environment] do
    source_path = File.join(Rails.root, SEED_SOURCE_PATH)
    source = Nokogiri::XML(File.read(source_path))

    year = source.xpath("//YEAR").text
    players_attributes_source = source.xpath("//PLAYER")

    players_attributes_source.each do |player_attributes_source|
      attributes = {year: year}

      MAPPING.each do |source_name, attribute|
        attributes[attribute] = player_attributes_source.xpath("./#{source_name}").text
      end

      Player.create(attributes)
    end
  end
end
