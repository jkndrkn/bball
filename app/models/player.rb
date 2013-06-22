class Player < ActiveRecord::Base
  def on_base_plus_slugging
    on_base_percentage + slugging_average if on_base_percentage && slugging_average
  end

  def batting_average
    divide_by_zero_guard(at_bats) do
      hits.to_f / at_bats
    end
  end

  def slugging_average
    divide_by_zero_guard(at_bats) do
      total_bases.to_f / at_bats
    end
  end

  def total_bases
    (1 * hits) + (2 * doubles) + 3 * triples + 4 * home_runs
  end
  
  def on_base_percentage
    numerator = hits + walks + hit_by_pitch
    denominator = at_bats + walks + sacrifice_hits + hit_by_pitch    

    divide_by_zero_guard(denominator) do
      numerator.to_f / denominator
    end
  end
  
  def summary
    [given_name, surname, batting_average.andand.round(3), home_runs,
     steals, rbi, runs, on_base_plus_slugging.andand.round(3)]
  end
  
  private
  
  def divide_by_zero_guard(denominator, &block)
    return nil if denominator == 0
    yield
  end
end
